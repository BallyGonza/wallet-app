import 'package:wallet_app/data/data.dart';

class TransactionRepository {
  TransactionRepository();

  final UserRepository _userRepository = UserRepository();
  UserModel? _cachedUser;

  Future<UserModel> _getUser() async {
    _cachedUser ??= await _userRepository.getUser();
    return _cachedUser!;
  }

  Future<List<TransactionModel>> getTransactions() async {
    final user = await _getUser();
    return user.accounts.expand((account) => account.transactions).toList()
      ..sort((a, b) => b.date.compareTo(a.date));
  }

  Future<void> addTransaction(
    AccountModel account,
    TransactionModel transaction,
  ) async {
    final user = await _getUser();
    final accountToUpdate = user.accounts.firstWhere((a) => a.id == account.id);
    accountToUpdate.transactions.add(transaction);
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  Future<void> updateTransaction(
    AccountModel account,
    AccountModel? newAccount,
    TransactionModel transaction,
  ) async {
    final user = await _getUser();
    if (newAccount != null) {
      user.accounts
          .firstWhere((a) => a.id == account.id)
          .transactions
          .remove(transaction);
      user.accounts
          .firstWhere((a) => a.id == newAccount.id)
          .transactions
          .add(transaction);
      await _userRepository.saveUser(user);
      _cachedUser = null;
      return;
    }
    for (final accountToUpdate in user.accounts) {
      if (accountToUpdate.id == account.id) {
        for (final transactionToUpdate in accountToUpdate.transactions) {
          if (transactionToUpdate.id == transaction.id) {
            transactionToUpdate
              ..amount = transaction.amount
              ..category = transaction.category
              ..date = transaction.date
              ..note = transaction.note;
          }
        }
      }
    }
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  Future<void> removeTransaction(
    AccountModel account,
    TransactionModel transaction,
  ) async {
    final user = await _getUser();
    for (final accountToUpdate in user.accounts) {
      if (accountToUpdate.id == account.id) {
        accountToUpdate.transactions.remove(transaction);
      }
    }
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Filter transactions by name
  List<TransactionModel> filterTransactionsByName({
    required String name,
    required List<TransactionModel> transactions,
  }) {
    return transactions
        .where(
          (transaction) => transaction.category.name
              .toLowerCase()
              .contains(name.toLowerCase()),
        )
        .toList();
  }

  List<TransactionModel> getAllTransactionsByDate(
    List<AccountModel> accounts,
    DateTime date,
  ) {
    return accounts
        .expand((account) => account.transactions)
        .where(
          (transaction) =>
              transaction.date.month == date.month &&
              transaction.date.year == date.year,
        )
        .toList();
  }

  List<TransactionModel> getTransactionsByDay(
    List<AccountModel> accounts,
    DateTime date,
    int day,
  ) {
    final transactions = <TransactionModel>[];
    for (final account in accounts) {
      transactions.addAll(account.transactions);
    }
    transactions.sort((a, b) => a.date.compareTo(b.date));
    return transactions
        .where(
          (transaction) =>
              transaction.date.day == day &&
              transaction.date.month == date.month &&
              transaction.date.year == date.year,
        )
        .toList();
  }

  double getTotalIncomeByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day,
  ) {
    return transactions
        .where(
          (transaction) =>
              transaction.category.isIncome &&
              transaction.date.day == day &&
              transaction.date.month == date.month &&
              transaction.date.year == date.year &&
              transaction.category.name != 'Dolares' &&
              transaction.category.name != 'Ahorros' &&
              transaction.category.name != 'Transfer in',
        )
        .fold(0, (total, transaction) => total + transaction.amount);
  }

  double getTotalExpensesByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day,
  ) {
    var total = 0.0;
    for (final transaction in transactions) {
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

  // Get the account of a transaction
  AccountModel? getAccountOfTransaction(
    List<AccountModel> accounts,
    TransactionModel transaction,
  ) {
    for (final account in accounts) {
      if (account.transactions.contains(transaction)) {
        return account;
      }
    }
    return null;
  }

  // Get the transactions of an account by date
  List<TransactionModel> getTransactionsByAccount(
    AccountModel account,
    DateTime date,
  ) {
    return account.transactions
        .where(
          (transaction) =>
              transaction.date.month == date.month &&
              transaction.date.year == date.year,
        )
        .toList()
      ..sort((a, b) => b.date.compareTo(a.date));
  }

  List<TransactionModel> getTransactionsByDate(
    DateTime date,
    List<TransactionModel> transactions,
  ) {
    final filteredTransactions = <TransactionModel>[];
    for (final transaction in transactions) {
      if (transaction.date.month == date.month &&
          transaction.date.year == date.year) {
        filteredTransactions.add(transaction);
      }
    }
    filteredTransactions.sort((a, b) => b.date.compareTo(a.date));
    return filteredTransactions;
  }

  List<TransactionModel> getTransactionsByCategory(
    CategoryModel category,
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    return transactions.fold<List<TransactionModel>>(
      [],
      (filteredTransactions, transaction) {
        if (transaction.category.id == category.id &&
            transaction.date.month == date.month &&
            transaction.date.year == date.year) {
          filteredTransactions.add(transaction);
        }
        return filteredTransactions;
      },
    );
  }

  List<TransactionModel> getTransactionsByInstitution(
    InstitutionModel institution,
    UserModel user,
    DateTime date,
  ) {
    return user.accounts
        .fold<List<TransactionModel>>(
          [],
          (institutionTransactions, account) {
            if (account.institution.id == institution.id) {
              institutionTransactions.addAll(account.transactions);
            }
            return institutionTransactions;
          },
        )
        .where(
          (transaction) =>
              transaction.date.month == date.month &&
              transaction.date.year == date.year,
        )
        .toList();
  }
}
