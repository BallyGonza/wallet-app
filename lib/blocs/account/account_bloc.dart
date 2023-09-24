import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/account/account_event.dart';
import 'package:wallet_app/blocs/account/account_state.dart';
import 'package:wallet_app/data/data.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState.initial()) {
    on<AccountInitialEvent>(_onInit);
    on<AccountAddEvent>(_onAdd);
    on<AccountRemoveEvent>(_onRemove);
    on<AccountAddTransactionEvent>(_onAddTransaction);
    on<AccountUpdateTransactionEvent>(_onUpdateTransaction);
    on<AccountRemoveTransactionEvent>(_onRemoveTransaction);

    add(const AccountEvent.init());
  }

  final AccountRepository accountRepository = AccountRepository();

  late List<AccountModel> accounts;

  Future<void> _onInit(
    AccountInitialEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    accounts = await accountRepository.getAccounts();
    emit(AccountState.loaded(accounts));
  }

  Future<void> _onAdd(
    AccountAddEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    await accountRepository.addAccount(event.account);
    accounts = await accountRepository.getAccounts();
    emit(AccountState.loaded(accounts));
  }

  Future<void> _onRemove(
    AccountRemoveEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    await accountRepository.removeAccount(event.account);
    accounts = await accountRepository.getAccounts();
    emit(AccountState.loaded(accounts));
  }

  Future<void> _onAddTransaction(
    AccountAddTransactionEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    await accountRepository.addTransaction(event.account, event.transaction);
    accounts = await accountRepository.getAccounts();
    emit(AccountState.loaded(accounts));
  }

  Future<void> _onUpdateTransaction(
    AccountUpdateTransactionEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    await accountRepository.updateTransaction(event.account, event.transaction);
    accounts = await accountRepository.getAccounts();
    emit(AccountState.loaded(accounts));
  }

  Future<void> _onRemoveTransaction(
    AccountRemoveTransactionEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    await accountRepository.removeTransaction(event.account, event.transaction);
    accounts = await accountRepository.getAccounts();
    emit(AccountState.loaded(accounts));
  }
}
