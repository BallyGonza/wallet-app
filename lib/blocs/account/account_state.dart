import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = AccountInitial;
  const factory AccountState.loading() = AccountLoading;
  const factory AccountState.loaded(
    List<AccountModel> accounts,
  ) = AccountUpdated;
}
