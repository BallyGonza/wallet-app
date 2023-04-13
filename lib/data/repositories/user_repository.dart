import 'package:wallet_app/data/data.dart';

class UserRepository {
  UserRepository();

  Future<UserModel> getUser() async {
    return defaultUser;
  }

  double getBalance(List<TransactionModel> transactions, DateTime date) {
    double total = 0;
    for (var transaction in transactions) {
      if (transaction.date.month <= date.month &&
          transaction.date.year <= date.year &&
          transaction.account.name != 'Ahorros') {
        total += transaction.amount;
      }
    }
    return total;
  }

  double getTotalIncome(UserModel user, DateTime date) {
    double income = 0;
    for (var transaction in user.transactions) {
      if (transaction.category.isIncome &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Transfer in' &&
          transaction.account.name != 'Ahorros') {
        income += transaction.amount;
      }
    }
    return income;
  }

  double getTotalExpense(UserModel user, DateTime date) {
    double expense = 0;
    for (var transaction in user.transactions) {
      if (!transaction.category.isIncome &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Transfer out') {
        expense += transaction.amount;
      }
    }
    return expense;
  }

  getTransactionsByDate(UserModel user, DateTime date) {
    return user.transactions
        .where((transaction) =>
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  getTotalByCategory(UserModel user, DateTime date, CategoryModel category) {
    double total = 0;
    for (var transaction in user.transactions) {
      if (transaction.category.id == category.id &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year) {
        total += transaction.amount;
      }
    }
    return total;
  }

  getTotalByCategoryRecursive(
      UserModel user, DateTime date, CategoryModel category) {
    double total = 0;
    for (var transaction in user.transactions) {
      if (transaction.category.id == category.id &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year) {
        total += transaction.amount;
      }
    }
    for (var subcategory in category.subCategories) {
      total += getTotalByCategoryRecursive(user, date, subcategory);
    }
    return total;
  }

  getTransactionsByYear(UserModel user, DateTime date) {
    return user.transactions
        .where((transaction) => transaction.date.year == date.year)
        .toList();
  }

  getTotalIncomeByYear(UserModel user, DateTime date) {
    double income = 0;
    for (var transaction in user.transactions) {
      if (transaction.category.isIncome &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Transfer in' &&
          transaction.account.name != 'Ahorros') {
        income += transaction.amount;
      }
    }
    return income;
  }

  getTotalIncomeByDay(UserModel user, DateTime date) {
    double income = 0;
    for (var transaction in user.transactions) {
      if (transaction.category.isIncome &&
          transaction.date.day == date.day &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Transfer in' &&
          transaction.account.name != 'Ahorros') {
        income += transaction.amount;
      }
    }
    return income;
  }

  getTotalExpenseByYear(UserModel user, DateTime date) {
    double expense = 0;
    for (var transaction in user.transactions) {
      if (!transaction.category.isIncome &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Transfer out') {
        expense += transaction.amount;
      }
    }
    return expense;
  }

  getTotalExpenseByDay(UserModel user, DateTime date) {
    double expense = 0;
    for (var transaction in user.transactions) {
      if (!transaction.category.isIncome &&
          transaction.date.day == date.day &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Transfer out') {
        expense += transaction.amount;
      }
    }
    return expense;
  }

  getTotalByCategoryYear(UserModel user, DateTime date, CategoryModel income) {
    double total = 0;
    for (var transaction in user.transactions) {
      if (transaction.category.id == income.id &&
          transaction.date.year == date.year) {
        total += transaction.amount;
      }
    }
    return total;
  }

  getTotalByCategoryRecursiveByYear(
      UserModel user, DateTime date, CategoryModel income) {
    double total = 0;
    for (var transaction in user.transactions) {
      if (transaction.category.id == income.id &&
          transaction.date.year == date.year) {
        total += transaction.amount;
      }
    }
    for (var subcategory in income.subCategories) {
      total += getTotalByCategoryRecursiveByYear(user, date, subcategory);
    }
    return total;
  }

  getBalanceByYear(List<TransactionModel> transactions, DateTime date) {
    double total = 0;
    for (var transaction in transactions) {
      if (transaction.date.year <= date.year &&
          transaction.account.name != 'Ahorros') {
        total += transaction.amount;
      }
    }
    return total;
  }
}

UserModel defaultUser = UserModel(
  id: 0,
  accounts: [...defaultAccounts],
  transactions: [],
  creditCardExpenses: [],
  incomeCategories: [...defaultIncomeCategories],
  expenseCategories: [...defaultExpenseCategories],
  creditCards: [...defaultCreditCards],
);
