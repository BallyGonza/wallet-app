import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';

import 'account_event.dart';
import 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState.initial()) {
    on<AccountInitialEvent>(_onInit);
    on<AccountAddEvent>(_onAdd);
    on<AccountRemoveEvent>(_onRemove);

    add(const AccountEvent.init());
  }

  final UserRepository userRepository = UserRepository();

  late UserModel user;
  late List<AccountModel> accounts;

  Future<void> _onInit(
    AccountInitialEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    user = await userRepository.getUser();
    accounts = user.accounts;
    emit(AccountState.loaded(accounts));
  }

  Future<void> _onAdd(
    AccountAddEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    accounts.add(event.account);
    await userRepository.saveUser(user);
    emit(AccountState.loaded(accounts));
  }

  Future<void> _onRemove(
    AccountRemoveEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    accounts.removeWhere((element) => element.id == event.account.id);
    await userRepository.saveUser(user);
    emit(AccountState.loaded(accounts));
  }
}
