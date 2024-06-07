import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class UserRepository {
  UserRepository();

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  static const String transferIn = 'Transfer in';
  static const String transferOut = 'Transfer out';
  static const String dolares = 'Dolares';

  Future<UserModel> getUser() async {
    if (box.isEmpty) {
      await saveUser(defaultUser);
    }
    return box.getAt(0)!;
  }

  Future<void> saveUser(UserModel user) async {
    await box.put(user.id, user);
  }

  Future<void> updateCategories(UserModel user) async {
    user
      ..incomeCategories = defaultIncomeCategories
      ..expenseCategories = defaultExpenseCategories;
    await saveUser(user);
  }

  double getBalance({
    required List<AccountModel> accounts,
    required DateTime date,
  }) {
    return _calculateTotal(accounts, date, (transaction) {
      return transaction.category.isIncome
          ? transaction.amount
          : -transaction.amount;
    });
  }

  double getTotalIncome(UserModel user, DateTime date) {
    return _calculateTotal(user.accounts, date, (transaction) {
      return transaction.category.isIncome ? transaction.amount : 0.0;
    });
  }

  double getTotalExpense(UserModel user, DateTime date) {
    return _calculateTotal(user.accounts, date, (transaction) {
      return !transaction.category.isIncome ? transaction.amount : 0.0;
    });
  }

  double getTotalByCategory(
    UserModel user,
    DateTime date,
    CategoryModel category,
  ) {
    return _calculateTotal(user.accounts, date, (transaction) {
      return transaction.category.id == category.id ? transaction.amount : 0.0;
    });
  }

  double getTotalByCategoryRecursive(
    UserModel user,
    DateTime date,
    CategoryModel category,
  ) {
    var total = getTotalByCategory(user, date, category);
    for (final subcategory in category.subCategories) {
      total += getTotalByCategoryRecursive(user, date, subcategory);
    }
    return total;
  }

  List<TransactionModel> getTransactionsByYear(UserModel user, DateTime date) {
    return _filterTransactions(user.accounts, (transaction) {
      return transaction.date.year == date.year;
    });
  }

  double getTotalIncomeByYear(UserModel user, DateTime date) {
    return _calculateTotal(user.accounts, date, (transaction) {
      return transaction.date.year == date.year && transaction.category.isIncome
          ? transaction.amount
          : 0.0;
    });
  }

  double getTotalIncomeByDay(UserModel user, DateTime date, int day) {
    return _calculateTotal(user.accounts, date, (transaction) {
      return transaction.date.day == day &&
              transaction.date.month == date.month &&
              transaction.date.year == date.year &&
              transaction.category.isIncome
          ? transaction.amount
          : 0.0;
    });
  }

  double getTotalExpenseByYear(UserModel user, DateTime date) {
    return _calculateTotal(user.accounts, date, (transaction) {
      return transaction.date.year == date.year &&
              !transaction.category.isIncome
          ? transaction.amount
          : 0.0;
    });
  }

  double getTotalByCategoryYear(
    UserModel user,
    DateTime date,
    CategoryModel category,
  ) {
    return _calculateTotal(user.accounts, date, (transaction) {
      return transaction.date.year == date.year &&
              transaction.category.id == category.id
          ? transaction.amount
          : 0.0;
    });
  }

  double getTotalByCategoryRecursiveByYear(
    UserModel user,
    DateTime date,
    CategoryModel category,
  ) {
    var total = getTotalByCategoryYear(user, date, category);
    for (final subcategory in category.subCategories) {
      total += getTotalByCategoryRecursiveByYear(user, date, subcategory);
    }
    return total;
  }

  double getBalanceByYear(List<TransactionModel> transactions, DateTime date) {
    return transactions
        .where((transaction) => transaction.date.year <= date.year)
        .fold(0, (total, transaction) => total + transaction.amount);
  }

  List<TransactionModel> filterTransactionsByDate(
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    return transactions.where((transaction) {
      return transaction.date.month == date.month &&
          transaction.date.year == date.year;
    }).toList();
  }

  List<TransactionModel> filterTransactionsByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day,
  ) {
    return transactions.where((transaction) {
      return transaction.date.day == day &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year;
    }).toList();
  }

  List<TransactionModel> getTransactionsByDate(UserModel user, DateTime date) {
    return _filterTransactions(user.accounts, (transaction) {
      return transaction.date.day == date.day &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year;
    });
  }

  double _calculateTotal(
    List<AccountModel> accounts,
    DateTime date,
    double Function(TransactionModel) calculate,
  ) {
    return accounts
        .expand((account) => account.transactions)
        .where((transaction) {
      return transaction.date.month <= date.month &&
          transaction.date.year <= date.year &&
          transaction.category.name != transferIn &&
          transaction.category.name != transferOut &&
          transaction.category.name != dolares;
    }).fold(0, (total, transaction) => total + calculate(transaction));
  }

  List<TransactionModel> _filterTransactions(
    List<AccountModel> accounts,
    bool Function(TransactionModel) filter,
  ) {
    return accounts
        .expand((account) => account.transactions)
        .where(filter)
        .toList();
  }
}

UserModel defaultUser = UserModel(
  id: 0,
  accounts: [],
  incomeCategories: [...defaultIncomeCategories],
  expenseCategories: [...defaultExpenseCategories],
  creditCards: [],
);
