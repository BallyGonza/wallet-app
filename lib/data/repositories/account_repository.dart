import 'package:wallet_app/data/data.dart';

class AccountRepository {
  AccountRepository();

  final UserRepository _userRepository = UserRepository();

  Future<List<AccountModel>> getAccounts() async {
    final UserModel user = await _userRepository.getUser();
    return user.accounts;
  }

  Future<void> addAccount(AccountModel account) async {
    final UserModel user = await _userRepository.getUser();
    user.accounts.add(account);
    await _userRepository.saveUser(user);
  }

  Future<void> removeAccount(AccountModel account) async {
    final UserModel user = await _userRepository.getUser();
    user.accounts.remove(account);
    await _userRepository.saveUser(user);
  }

  Future<void> addTransaction(
    AccountModel account,
    TransactionModel transaction,
  ) async {
    final UserModel user = await _userRepository.getUser();
    for (final AccountModel accountToUpdate in user.accounts) {
      if (accountToUpdate.id == account.id) {
        accountToUpdate.transactions.add(transaction);
      }
    }
    await _userRepository.saveUser(user);
  }

  Future<void> removeTransaction(
    AccountModel account,
    TransactionModel transaction,
  ) async {
    final UserModel user = await _userRepository.getUser();
    for (final AccountModel accountToUpdate in user.accounts) {
      if (accountToUpdate.id == account.id) {
        accountToUpdate.transactions.remove(transaction);
      }
    }
    await _userRepository.saveUser(user);
  }

  List<TransactionModel> getAllTransactions(
    List<AccountModel> accounts,
    DateTime date,
  ) {
    final List<TransactionModel> transactions = [];
    for (var account in accounts) {
      transactions.addAll(account.transactions);
    }
    return transactions
        .where((transaction) =>
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  List<TransactionModel> getTransactionsByDay(
    List<AccountModel> accounts,
    DateTime date,
    int day,
  ) {
    final List<TransactionModel> transactions = [];
    for (var account in accounts) {
      transactions.addAll(account.transactions);
    }
    // sort
    transactions.sort((a, b) => a.date.compareTo(b.date));
    return transactions
        .where((transaction) =>
            transaction.date.day == day &&
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  double getTotalIncomeByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day,
  ) {
    double total = 0;
    for (var transaction in transactions) {
      if (transaction.category.isIncome &&
          transaction.date.day == day &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Ahorros' &&
          transaction.category.name != 'Transfer in') {
        total += transaction.amount;
      }
    }
    return total;
  }

  double getTotalExpensesByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day,
  ) {
    double total = 0;
    for (var transaction in transactions) {
      if (!transaction.category.isIncome &&
          transaction.date.day == day &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Transfer out') {
        total += transaction.amount;
      }
    }
    return total;
  }

  // getAccountOfTransaction
  AccountModel? getAccountOfTransaction(
    UserModel user,
    TransactionModel transaction,
  ) {
    for (var account in user.accounts) {
      if (account.transactions.contains(transaction)) {
        return account;
      }
    }
    return null;
  }

// Hasta aca las necesito todas
// ------------------------------------------------------------

  List<TransactionModel> getTransactionsByAccount(
    AccountModel account,
    UserModel user,
    DateTime date,
  ) {
    return account.transactions
        .where((transaction) =>
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  List<TransactionModel> getTransactionsByDate(
    DateTime date,
    List<TransactionModel> transactions,
  ) {
    return transactions
        .where((transaction) =>
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  List<TransactionModel> getTransactionsByCategory(
    CategoryModel category,
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    return transactions
        .where((transaction) =>
            transaction.category.id == category.id &&
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  List<TransactionModel> getTransactionsByInstitution(
    InstitutionModel institution,
    UserModel user,
    DateTime date,
  ) {
    final List<TransactionModel> institutionTransactions = [];
    for (var account in user.accounts) {
      if (account.institution.id == institution.id) {
        institutionTransactions.addAll(account.transactions);
      }
    }
    return institutionTransactions
        .where((transaction) =>
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  double getTotalIncomesByAccount(
    AccountModel account,
    DateTime date,
  ) {
    double income = 0;
    for (var transaction in account.transactions) {
      if (transaction.category.isIncome &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        income += transaction.amount;
      }
    }
    return income;
  }

  double getTotalExpensesByAccount(
    AccountModel account,
    DateTime date,
  ) {
    double expenses = 0;
    for (var transaction in account.transactions) {
      if (!transaction.category.isIncome &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        expenses += transaction.amount;
      }
    }
    return expenses;
  }

  double getBalanceOfAccount(
    AccountModel account,
    DateTime date,
  ) {
    double balance = 0;
    for (var transaction in account.transactions) {
      if (transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        if (transaction.category.isIncome) {
          balance += transaction.amount;
        } else {
          balance -= transaction.amount;
        }
      }
    }
    return balance;
  }
}

List<AccountModel> defaultAccounts = [cash];

AccountModel cash = AccountModel(
  id: 0,
  name: 'Efectivo',
  institution: wallet,
);

AccountModel hsbc = AccountModel(
  id: 1,
  name: 'HSBC',
  institution: hsbcInstitution,
);

AccountModel bbva = AccountModel(
  id: 2,
  name: 'BBVA',
  institution: bbvaInstitution,
);

AccountModel mercadoPago = AccountModel(
  id: 3,
  name: 'Mercado Pago',
  institution: mercadoPagoInstitution,
);

AccountModel savingsAccount = AccountModel(
  id: 4,
  name: 'Ahorros',
  institution: savingsInstitution,
);
