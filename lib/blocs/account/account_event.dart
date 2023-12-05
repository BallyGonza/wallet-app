import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'account_event.freezed.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.init() = AccountInitialEvent;
  const factory AccountEvent.add(
    AccountModel account,
  ) = AccountAddEvent;
  const factory AccountEvent.remove(
    AccountModel account,
  ) = AccountRemoveEvent;
  const factory AccountEvent.addTransaction(
    AccountModel account,
    TransactionModel transaction,
  ) = AccountAddTransactionEvent;
  const factory AccountEvent.updateTransaction(
    AccountModel account,
    AccountModel? newAccount,
    TransactionModel transaction,
  ) = AccountUpdateTransactionEvent;
  const factory AccountEvent.removeTransaction(
    AccountModel account,
    TransactionModel transaction,
  ) = AccountRemoveTransactionEvent;
}
