import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.loaded(UserModel user) = UserUpdated;
  const factory UserState.error(String message) = UserError;
}
