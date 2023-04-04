import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(
    this.user,
  ) : super(const TransactionState.initial()) {
    on<TransactionInitialEvent>(_onInit);
    on<AddTransactionEvent>(_onAddTransaction);
    on<UpdateTransactionEvent>(_onUpdateTransaction);
    on<RemoveTransactionEvent>(_onRemoveTransaction);
    on<RemoveAllTransactionsEvent>(_onRemoveAllTransactions);

    add(const TransactionEvent.init());
  }

  late UserModel user;
  List<TransactionModel> transactions = [];

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  void _onInit(
    TransactionInitialEvent event,
    Emitter<TransactionState> emit,
  ) async {
    user = box.get(user.id)!;
    for (final account in user.accounts) {
      transactions.addAll(account.transactions);
    }
    emit(TransactionState.updated(transactions));
  }

  Future<void> _onAddTransaction(
    AddTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    for (final account in user.accounts) {
      if (account.name == event.transaction.account.name) {
        account.transactions.add(event.transaction);
      }
    }
    transactions.add(event.transaction);
    await box.put(user.id, user);
    emit(TransactionState.updated(transactions));
  }

  void _onUpdateTransaction(
    UpdateTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    for (final account in user.accounts) {
      if (account.name == event.transaction.account.name) {
        account.transactions[event.transaction.id] = event.transaction;
      }
    }
    transactions[event.transaction.id] = event.transaction;
    await box.put(user.id, user);
    emit(TransactionState.updated(transactions));
  }

  void _onRemoveTransaction(
    RemoveTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    for (final account in user.accounts) {
      if (account.name == event.transaction.account.name) {
        account.transactions
            .removeWhere((element) => element.id == event.transaction.id);
      }
    }
    transactions.removeAt(event.transaction.id);
    await box.put(user.id, user);
    emit(TransactionState.updated(transactions));
  }

  void _onRemoveAllTransactions(
    RemoveAllTransactionsEvent event,
    Emitter<TransactionState> emit,
  ) async {
    transactions.clear();
    await box.put(user.id, user);
    emit(TransactionState.updated(transactions));
  }
}
