import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class UserRepository {
  UserRepository();

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  // get user from hive or return default user
  Future<UserModel> getUser() async {
    if (box.isEmpty) {
      await saveUser(defaultUser);
      return box.getAt(0)!;
    } else {
      return box.getAt(0)!;
    }
  }

  // save user to hive
  Future<void> saveUser(UserModel user) async {
    await box.put(user.id, user);
  }

  // update incomeCategories
  Future<void> updateCategories(UserModel user) async {
    user
      ..incomeCategories = defaultIncomeCategories
      ..expenseCategories = defaultExpenseCategories;
    await saveUser(user);
  }

  double getBalance(List<AccountModel> accounts, DateTime date) {
    var total = 0.0;
    for (final account in accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.month <= date.month &&
            transaction.date.year <= date.year &&
            transaction.category.name != 'Transfer in' &&
            transaction.category.name != 'Transfer out') {
          if (transaction.category.isIncome) {
            total += transaction.amount;
          } else {
            total -= transaction.amount;
          }
        }
      }
    }
    return total;
  }

  double getTotalIncome(UserModel user, DateTime date) {
    var income = 0.0;
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.month == date.month &&
            transaction.date.year == date.year &&
            transaction.category.name != 'Transfer in' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (transaction.category.isIncome) {
        income += transaction.amount;
      }
    }

    return income;
  }

  double getTotalExpense(UserModel user, DateTime date) {
    var expense = 0.0;
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.month == date.month &&
            transaction.date.year == date.year &&
            transaction.category.name != 'Transfer out' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (!transaction.category.isIncome) {
        expense += transaction.amount;
      }
    }
    return expense;
  }

  List<TransactionModel> filterTransactionsByDate(
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    return transactions
        .where(
          (transaction) =>
              transaction.date.month == date.month &&
              transaction.date.year == date.year,
        )
        .toList();
  }

  double getTotalByCategory(
    UserModel user,
    DateTime date,
    CategoryModel category,
  ) {
    var total = 0.0;
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.month == date.month &&
            transaction.date.year == date.year &&
            transaction.category.name != 'Transfer out' &&
            transaction.category.name != 'Transfer in' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (transaction.category.id == category.id) {
        total += transaction.amount;
      }
    }
    return total;
  }

  double getTotalByCategoryRecursive(
    UserModel user,
    DateTime date,
    CategoryModel category,
  ) {
    var total = 0.0;
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.month == date.month &&
            transaction.date.year == date.year &&
            transaction.category.name != 'Transfer out') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (transaction.category.id == category.id) {
        total += transaction.amount;
      }
    }

    for (final subcategory in category.subCategories) {
      total += getTotalByCategoryRecursive(user, date, subcategory);
    }
    return total;
  }

  List<TransactionModel> getTransactionsByYear(UserModel user, DateTime date) {
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.year == date.year &&
            transaction.category.name != 'Transfer out' &&
            transaction.category.name != 'Transfer in' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    return transactions;
  }

  double getTotalIncomeByYear(UserModel user, DateTime date) {
    var income = 0.0;
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.year == date.year &&
            transaction.category.name != 'Transfer in' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (transaction.category.isIncome) {
        income += transaction.amount;
      }
    }
    return income;
  }

  double getTotalIncomeByDay(UserModel user, DateTime date, int day) {
    var income = 0.0;
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.day == day &&
            transaction.date.month == date.month &&
            transaction.date.year == date.year &&
            transaction.category.name != 'Transfer in' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (transaction.category.isIncome) {
        income += transaction.amount;
      }
    }
    return income;
  }

  double getTotalExpenseByYear(UserModel user, DateTime date) {
    var expense = 0.0;
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.year == date.year &&
            transaction.category.name != 'Transfer out' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (!transaction.category.isIncome) {
        expense += transaction.amount;
      }
    }
    return expense;
  }

  double getTotalByCategoryYear(
    UserModel user,
    DateTime date,
    CategoryModel income,
  ) {
    var total = 0.0;
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.year == date.year &&
            transaction.category.name != 'Transfer out' &&
            transaction.category.name != 'Transfer in' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (transaction.category.id == income.id) {
        total += transaction.amount;
      }
    }
    return total;
  }

  double getTotalByCategoryRecursiveByYear(
    UserModel user,
    DateTime date,
    CategoryModel income,
  ) {
    var total = 0.0;

    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.year == date.year &&
            transaction.category.name != 'Transfer out') {
          transactions.add(transaction);
        }
      }
    }
    for (final transaction in transactions) {
      if (transaction.category.id == income.id) {
        total += transaction.amount;
      }
    }
    for (final subcategory in income.subCategories) {
      total += getTotalByCategoryRecursiveByYear(user, date, subcategory);
    }
    return total;
  }

  double getBalanceByYear(List<TransactionModel> transactions, DateTime date) {
    var total = 0.0;
    for (final transaction in transactions) {
      if (transaction.date.year <= date.year) {
        total += transaction.amount;
      }
    }
    return total;
  }

  List<TransactionModel> filterTransactionsByDay(
    List<TransactionModel> transactions,
    DateTime date,
    int day,
  ) {
    return transactions
        .where(
          (transaction) =>
              transaction.date.day == day &&
              transaction.date.month == date.month &&
              transaction.date.year == date.year,
        )
        .toList();
  }

  List<TransactionModel> getTransactionsByDate(UserModel user, DateTime date) {
    final transactions = <TransactionModel>[];
    for (final account in user.accounts) {
      for (final transaction in account.transactions) {
        if (transaction.date.day == date.day &&
            transaction.date.month == date.month &&
            transaction.date.year == date.year &&
            transaction.category.name != 'Transfer out' &&
            transaction.category.name != 'Transfer in' &&
            transaction.category.name != 'Ahorros') {
          transactions.add(transaction);
        }
      }
    }
    return transactions;
  }
}

UserModel defaultUser = UserModel(
  id: 0,
  accounts: [],
  incomeCategories: [...defaultIncomeCategories],
  expenseCategories: [...defaultExpenseCategories],
  creditCards: [],
);
