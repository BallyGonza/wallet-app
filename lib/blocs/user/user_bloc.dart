import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(
    this.usersRepository,
  ) : super(const UserState.initial()) {
    on<UserInitialEvent>(_onInit);
    on<UserAddTransactionEvent>(_onAddTransaction);
    on<UserSubtractEvent>(_onRemove);

    add(const UserEvent.init());
  }

  final UserRepository usersRepository;
  late List<UserModel> defaultUsers;
  List<UserModel> users = [];
  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  void _onInit(
    UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {
    defaultUsers = await usersRepository.getUsers();
    for (final user in defaultUsers) {
      if (!box.containsKey(user.id)) {
        await box.put(user.id, user);
      }
    }
    for (final user in defaultUsers) {
      users.add(box.get(user.id)!);
    }

    emit(UserState.updated(users));
  }

  void _onAddTransaction(
    UserAddTransactionEvent event,
    Emitter<UserState> emit,
  ) {
    box.get(event.user.id)!.transactions.add(event.transaction);
    emit(UserState.updated(users));
  }

  void _onRemove(
    UserSubtractEvent event,
    Emitter<UserState> emit,
  ) {
    emit(UserState.updated(users));
  }

  UserState? fromJson(Map<String, dynamic> json) {
    return UserState.fromJson(json);
  }

  Map<String, dynamic>? toJson(UserState state) {
    return state.toJson();
  }
}
