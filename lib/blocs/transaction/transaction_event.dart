import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'transaction_event.freezed.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.init() = TransactionInitialEvent;
  const factory TransactionEvent.addTransaction(
    TransactionModel transaction,
  ) = AddTransactionEvent;
  const factory TransactionEvent.updateTransaction(
    int index,
    TransactionModel transaction,
  ) = UpdateTransactionEvent;
  const factory TransactionEvent.removeTransaction(
    int index,
  ) = RemoveTransactionEvent;
  const factory TransactionEvent.removeAllTransactions() =
      RemoveAllTransactionsEvent;
}
