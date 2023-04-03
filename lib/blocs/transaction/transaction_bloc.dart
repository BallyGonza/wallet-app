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
  late List<TransactionModel> transactions;

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  void _onInit(
    TransactionInitialEvent event,
    Emitter<TransactionState> emit,
  ) async {
    user = box.get(user.id)!;
    transactions = user.transactions;
    emit(TransactionState.updated(user.transactions));
  }

  void _onAddTransaction(
    AddTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    transactions.add(event.transaction);
    await box.put(user.id, user);
    emit(TransactionState.updated(user.transactions));
  }

  void _onUpdateTransaction(
    UpdateTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    transactions[event.index] = event.transaction;
    await box.put(user.id, user);
    emit(TransactionState.updated(user.transactions));
  }

  void _onRemoveTransaction(
    RemoveTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    transactions.removeAt(event.index);
    await box.put(user.id, user);
    emit(TransactionState.updated(user.transactions));
  }

  void _onRemoveAllTransactions(
    RemoveAllTransactionsEvent event,
    Emitter<TransactionState> emit,
  ) async {
    transactions.clear();
    await box.put(user.id, user);
    emit(TransactionState.updated(user.transactions));
  }

  //  ----------------------------

  TransactionState? fromJson(Map<String, dynamic> json) {
    return TransactionState.fromJson(json);
  }

  Map<String, dynamic>? toJson(TransactionState state) {
    return state.toJson();
  }
}
