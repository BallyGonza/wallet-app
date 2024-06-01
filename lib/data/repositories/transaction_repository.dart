import 'package:wallet_app/data/data.dart';

class TransactionRepository {
  TransactionRepository();

  final UserRepository _userRepository = UserRepository();
  UserModel? _cachedUser;

  static const String dolares = 'Dolares';
  static const String ahorros = 'Ahorros';
  static const String transferIn = 'Transfer in';
  static const String transferOut = 'Transfer out';

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
      _moveTransaction(user, account, newAccount, transaction);
    } else {
      _updateTransactionInSameAccount(user, account, transaction);
    }
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  Future<void> removeTransaction(
    AccountModel account,
    TransactionModel transaction,
  ) async {
    final user = await _getUser();
    final accountToUpdate = user.accounts.firstWhere((a) => a.id == account.id);
    accountToUpdate.transactions.remove(transaction);
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  List<TransactionModel> filterTransactionsByName({
    required String name,
    required List<TransactionModel> transactions,
  }) {
    final query = name.toLowerCase();
    return transactions.where((transaction) {
      return transaction.category.name.toLowerCase().contains(query);
    }).toList();
  }

  List<TransactionModel> getAllTransactionsByDate(
    List<AccountModel> accounts,
    DateTime date,
  ) {
    return _filterTransactionsByDate(accounts, date);
  }

  List<TransactionModel> getTransactionsByDay(
    List<AccountModel> accounts,
    DateTime date,
    int day,
  ) {
    return _filterTransactionsByDate(accounts, date).where((transaction) {
      return transaction.date.day == day;
    }).toList();
  }

  double getTotalIncomeByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day,
  ) {
    return _calculateTotalByDay(transactions, date, day, isIncome: true);
  }

  double getTotalExpensesByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day,
  ) {
    return _calculateTotalByDay(transactions, date, day, isIncome: false);
  }

  AccountModel? getAccountOfTransaction(
    List<AccountModel> accounts,
    TransactionModel transaction,
  ) {
    return accounts.firstWhere((account) {
      return account.transactions.contains(transaction);
    });
  }

  List<TransactionModel> getTransactionsByAccount(
    AccountModel account,
    DateTime date,
  ) {
    return _filterTransactionsByDate([account], date)
      ..sort((a, b) => b.date.compareTo(a.date));
  }

  List<TransactionModel> getTransactionsByDate(
    DateTime date,
    List<TransactionModel> transactions,
  ) {
    return transactions.where((transaction) {
      return transaction.date.month == date.month &&
          transaction.date.year == date.year;
    }).toList()
      ..sort((a, b) => b.date.compareTo(a.date));
  }

  List<TransactionModel> getTransactionsByCategory(
    CategoryModel category,
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    return transactions.where((transaction) {
      return transaction.category.id == category.id &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year;
    }).toList();
  }

  List<TransactionModel> getTransactionsByInstitution(
    InstitutionModel institution,
    UserModel user,
    DateTime date,
  ) {
    return user.accounts.where((account) {
      return account.institution.id == institution.id;
    }).expand((account) {
      return account.transactions;
    }).where((transaction) {
      return transaction.date.month == date.month &&
          transaction.date.year == date.year;
    }).toList();
  }

  List<TransactionModel> _filterTransactionsByDate(
    List<AccountModel> accounts,
    DateTime date,
  ) {
    return accounts.expand((account) {
      return account.transactions;
    }).where((transaction) {
      return transaction.date.month == date.month &&
          transaction.date.year == date.year;
    }).toList();
  }

  void _moveTransaction(
    UserModel user,
    AccountModel oldAccount,
    AccountModel newAccount,
    TransactionModel transaction,
  ) {
    user.accounts
        .firstWhere((a) => a.id == oldAccount.id)
        .transactions
        .remove(transaction);
    user.accounts
        .firstWhere((a) => a.id == newAccount.id)
        .transactions
        .add(transaction);
  }

  void _updateTransactionInSameAccount(
    UserModel user,
    AccountModel account,
    TransactionModel transaction,
  ) {
    final accountToUpdate = user.accounts.firstWhere((a) => a.id == account.id);
    accountToUpdate.transactions.firstWhere((t) => t.id == transaction.id)
      ..amount = transaction.amount
      ..category = transaction.category
      ..date = transaction.date
      ..note = transaction.note;
  }

  double _calculateTotalByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day, {
    required bool isIncome,
  }) {
    return transactions.where((transaction) {
      return transaction.category.isIncome == isIncome &&
          transaction.date.day == day &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year &&
          ![dolares, ahorros, transferIn, transferOut]
              .contains(transaction.category.name);
    }).fold(0, (total, transaction) => total + transaction.amount);
  }
}
