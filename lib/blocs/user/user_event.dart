import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.init() = UserInitialEvent;
  const factory UserEvent.addTransaction(
    UserModel user,
    TransactionModel transaction,
  ) = UserAddTransactionEvent;
  const factory UserEvent.remove() = UserSubtractEvent;
}
