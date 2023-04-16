import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'transaction_event.freezed.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.init() = TransactionInitialEvent;
  const factory TransactionEvent.add(
    AccountModel account,
    TransactionModel transaction,
  ) = TransactionAddEvent;
  const factory TransactionEvent.remove(
    AccountModel account,
    TransactionModel transaction,
  ) = TransactionRemoveEvent;
}
