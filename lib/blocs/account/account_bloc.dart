import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc({
    required this.accountRepository,
    required this.transactionRepository,
  }) : super(const AccountState.initial()) {
    on<AccountInitialEvent>(_onInit);
    on<AccountAddEvent>(_onAdd);
    on<AccountRemoveEvent>(_onRemove);
    on<AccountAddTransactionEvent>(_onAddTransaction);
    on<AccountUpdateTransactionEvent>(_onUpdateTransaction);
    on<AccountRemoveTransactionEvent>(_onRemoveTransaction);

    add(const AccountEvent.init());
  }

  final AccountRepository accountRepository;
  final TransactionRepository transactionRepository;
  late List<AccountModel> accounts;

  Future<void> _onInit(
    AccountInitialEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    try {
      accounts = await accountRepository.getAccounts();
      emit(AccountState.loaded(accounts));
    } catch (e) {
      emit(AccountState.error(e.toString()));
    }
  }

  Future<void> _onAdd(
    AccountAddEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    try {
      await accountRepository.addAccount(event.account);
      accounts = await accountRepository.getAccounts();
      emit(AccountState.loaded(accounts));
    } catch (e) {
      emit(AccountState.error(e.toString()));
    }
  }

  Future<void> _onRemove(
    AccountRemoveEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    try {
      await accountRepository.removeAccount(event.account);
      accounts = await accountRepository.getAccounts();
      emit(AccountState.loaded(accounts));
    } catch (e) {
      emit(AccountState.error(e.toString()));
    }
  }

  Future<void> _onAddTransaction(
    AccountAddTransactionEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    try {
      await transactionRepository.addTransaction(
        event.account,
        event.transaction,
      );
      accounts = await accountRepository.getAccounts();
      emit(AccountState.loaded(accounts));
    } catch (e) {
      emit(AccountState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTransaction(
    AccountUpdateTransactionEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    try {
      await transactionRepository.updateTransaction(
        event.account,
        event.newAccount,
        event.transaction,
      );
      accounts = await accountRepository.getAccounts();
      emit(AccountState.loaded(accounts));
    } catch (e) {
      emit(AccountState.error(e.toString()));
    }
  }

  Future<void> _onRemoveTransaction(
    AccountRemoveTransactionEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.loading());
    try {
      await transactionRepository.removeTransaction(
        event.account,
        event.transaction,
      );
      accounts = await accountRepository.getAccounts();
      emit(AccountState.loaded(accounts));
    } catch (e) {
      emit(AccountState.error(e.toString()));
    }
  }
}
