import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(
    this.usersRepository,
  ) : super(const UserState.initial()) {
    on<UserInitialEvent>(_onInit);

    on<UserAddAccountEvent>(_onAddAccount);
    on<UserUpdateAccountEvent>(_onUpdateAccount);
    on<UserRemoveAccountEvent>(_onRemoveAccount);

    on<UserAddCategoryEvent>(_onAddCategory);
    on<UserUpdateCategoryEvent>(_onUpdateCategory);
    on<UserRemoveCategoryEvent>(_onRemoveCategory);

    add(const UserEvent.init());
  }

  final UserRepository usersRepository;
  late UserModel defaultUser;
  late UserModel user;
  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  void _onInit(
    UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {
    defaultUser = await usersRepository.getUser();
    if (!box.containsKey(defaultUser.id)) {
      await box.put(defaultUser.id, defaultUser);
    }
    user = box.get(defaultUser.id)!;

    emit(UserState.updated(user));
  }

  // Account

  void _onAddAccount(
    UserAddAccountEvent event,
    Emitter<UserState> emit,
  ) {
    user.accounts.add(event.account);
    box.put(event.user.id, event.user);
    emit(UserState.updated(user));
  }

  void _onUpdateAccount(
    UserUpdateAccountEvent event,
    Emitter<UserState> emit,
  ) {
    user.accounts[event.index] = event.account;
    box.put(event.user.id, event.user);
    emit(UserState.updated(user));
  }

  void _onRemoveAccount(
    UserRemoveAccountEvent event,
    Emitter<UserState> emit,
  ) {
    user.accounts.remove(event.account);
    box.put(event.user.id, event.user);
    emit(UserState.updated(user));
  }

  // Category

  void _onAddCategory(
    UserAddCategoryEvent event,
    Emitter<UserState> emit,
  ) {
    user.categories.add(event.category);
    box.put(event.user.id, event.user);
    emit(UserState.updated(user));
  }

  void _onUpdateCategory(
    UserUpdateCategoryEvent event,
    Emitter<UserState> emit,
  ) {
    user.categories[event.index] = event.category;
    box.put(event.user.id, event.user);
    emit(UserState.updated(user));
  }

  void _onRemoveCategory(
    UserRemoveCategoryEvent event,
    Emitter<UserState> emit,
  ) {
    user.categories.remove(event.category);
    box.put(event.user.id, event.user);
    emit(UserState.updated(user));
  }

  //  ----------------------------

  UserState? fromJson(Map<String, dynamic> json) {
    return UserState.fromJson(json);
  }

  Map<String, dynamic>? toJson(UserState state) {
    return state.toJson();
  }
}
