import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.updated(
    List<UserModel> users,
  ) = UserUpdated;
  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
