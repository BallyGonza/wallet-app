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
}
