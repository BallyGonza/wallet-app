import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';

import 'transaction_event.dart';
import 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const TransactionState.initial()) {
    on<TransactionInitialEvent>(_onInit);
    on<TransactionAddEvent>(_onAdd);
    on<TransactionRemoveEvent>(_onRemove);

    add(const TransactionEvent.init());
  }

  final TransactionRepository transactionRepository = TransactionRepository();

  late List<TransactionModel> transactions;

  Future<void> _onInit(
    TransactionInitialEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(const TransactionState.loading());
    transactions = await transactionRepository.getTransactions();
    emit(TransactionState.loaded(transactions));
  }

  Future<void> _onAdd(
    TransactionAddEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(const TransactionState.loading());
    await transactionRepository.addTransaction(
        event.account, event.transaction);
    transactions = await transactionRepository.getTransactions();
    emit(TransactionState.loaded(transactions));
  }

  Future<void> _onRemove(
    TransactionRemoveEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(const TransactionState.loading());
    await transactionRepository.removeTransaction(
        event.account, event.transaction);
    transactions = await transactionRepository.getTransactions();
    emit(TransactionState.loaded(transactions));
  }
}
