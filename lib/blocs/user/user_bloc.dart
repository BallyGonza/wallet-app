import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.initial()) {
    on<UserInitialEvent>(_onInit);

    on<UserAddAccountEvent>(_onAddAccount);
    on<UserRemoveAccountEvent>(_onRemoveAccount);

    on<UserAddCreditCardEvent>(_onAddCreditCard);
    on<UserRemoveCreditCardEvent>(_onRemoveCreditCard);

    on<UserAddTransactionEvent>(_onAddTransaction);
    on<UserUpdateTransactionEvent>(_onUpdateTransaction);
    on<UserRemoveTransactionEvent>(_onRemoveTransaction);

    on<UserAddCreditCardExpenseEvent>(_onAddCreditCardExpense);
    on<UserRemoveCreditCardExpenseEvent>(_onRemoveCreditCardExpense);
    on<UserPayCreditCardEvent>(_onPayCreditCard);

    add(const UserEvent.init());
  }

  final UserRepository userRepository = UserRepository();
  final AccountRepository accountRepository = AccountRepository();
  final CreditCardRepository creditCardRepository = CreditCardRepository();
  final TransactionRepository transactionRepository = TransactionRepository();

  late UserModel user;
  List<TransactionModel> transactions = [];
  List<CreditCardTransactionModel> creditCardExpenses = [];
  List<AccountModel> accounts = [];
  List<CreditCardModel> creditCards = [];

  Future<void> _onInit(
    UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {
    defaultUser = await userRepository.getDefaultUser();
    await userRepository.saveUserIfNotExists(defaultUser);
    user = await userRepository.getUser(defaultUser.id);
    transactions.addAll(user.transactions);
    accounts.addAll(user.accounts);
    creditCards.addAll(user.creditCards);
    creditCardExpenses.addAll(user.creditCardExpenses);
    transactions.sort((a, b) => a.date.compareTo(b.date));
    emit(UserState.loaded(user));
  }

  // Account

  Future<void> _onAddAccount(
    UserAddAccountEvent event,
    Emitter<UserState> emit,
  ) async {
    accounts.add(event.account);
    await accountRepository.updateAccounts(user, accounts);
    emit(UserState.loaded(user));
  }

  Future<void> _onRemoveAccount(
    UserRemoveAccountEvent event,
    Emitter<UserState> emit,
  ) async {
    accounts.removeWhere((element) => element.id == event.account.id);
    await accountRepository.updateAccounts(user, accounts);
    emit(UserState.loaded(user));
  }

  // Credit Card

  Future<void> _onAddCreditCard(
    UserAddCreditCardEvent event,
    Emitter<UserState> emit,
  ) async {
    creditCards.add(event.creditCard);
    await creditCardRepository.updateCreditCards(user, creditCards);
    emit(UserState.loaded(user));
  }

  Future<void> _onRemoveCreditCard(
    UserRemoveCreditCardEvent event,
    Emitter<UserState> emit,
  ) async {
    creditCards.removeWhere((element) => element.id == event.creditCard.id);
    await creditCardRepository.updateCreditCards(user, creditCards);
    emit(UserState.loaded(user));
  }

  // Transaction
  Future<void> _onAddTransaction(
    UserAddTransactionEvent event,
    Emitter<UserState> emit,
  ) async {
    transactions.add(event.transaction);
    transactions.sort((a, b) => a.date.compareTo(b.date));
    transactionRepository.updateTransactions(user, transactions);
    emit(UserState.loaded(user));
  }

  Future<void> _onUpdateTransaction(
    UserUpdateTransactionEvent event,
    Emitter<UserState> emit,
  ) async {
    transactions.firstWhere((element) => element.id == event.transaction.id)
      ..amount = event.transaction.amount
      ..date = event.transaction.date
      ..note = event.transaction.note
      ..account = event.transaction.account
      ..category = event.transaction.category;
    transactionRepository.updateTransactions(user, transactions);
    emit(UserState.loaded(user));
  }

  Future<void> _onRemoveTransaction(
    UserRemoveTransactionEvent event,
    Emitter<UserState> emit,
  ) async {
    transactions.removeWhere((element) => element.id == event.transaction.id);
    await transactionRepository.updateTransactions(user, transactions);
    emit(UserState.loaded(user));
  }

  // Credit Card Expense
  Future<void> _onAddCreditCardExpense(
    UserAddCreditCardExpenseEvent event,
    Emitter<UserState> emit,
  ) async {
    creditCardExpenses.add(event.creditCardExpense);
    await transactionRepository.updateCreditCardExpenses(
        user, creditCardExpenses);
    emit(UserState.loaded(user));
  }

  Future<void> _onRemoveCreditCardExpense(
    UserRemoveCreditCardExpenseEvent event,
    Emitter<UserState> emit,
  ) async {
    creditCardExpenses
        .removeWhere((element) => element.id == event.creditCardExpense.id);
    await transactionRepository.updateCreditCardExpenses(
        user, creditCardExpenses);
    emit(UserState.loaded(user));
  }

  Future<void> _onPayCreditCard(
    UserPayCreditCardEvent event,
    Emitter<UserState> emit,
  ) async {
    for (var transaction in event.creditCardExpenses) {
      int currentCuota =
          (transaction.date.difference(event.date).inDays / 30).round().abs();
      if (currentCuota == transaction.cuotas) {
        creditCardExpenses
            .removeWhere((element) => element.id == transaction.id);
        // creditCardExpenses.sort((a, b) => a.date.compareTo(b.date));
        user.creditCardExpenses = creditCardExpenses;
      }
    }
    await userRepository.saveUser(user);
    emit(UserState.loaded(user));
  }
}
