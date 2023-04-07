import 'package:wallet_app/data/data.dart';

class UserRepository {
  UserRepository();

  Future<UserModel> getUser() async {
    return user;
  }

  // calculate total of transactions
  double getTotal(List<TransactionModel> transactions, DateTime date) {
    double total = 0;
    for (var transaction in transactions) {
      if (transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        total += transaction.amount;
      }
    }
    return total;
  }

  // calculate balance of account
  double getAccountBalance(AccountModel account,
      List<TransactionModel> transactions, DateTime date) {
    double balance = 0;
    for (var transaction in transactions) {
      if (transaction.account.name == account.name &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        balance += transaction.amount;
      }
    }
    return balance;
  }

  // calculate all income of all transactions

  double getIncome(UserModel user, DateTime date) {
    double income = 0;
    for (var transaction in user.transactions) {
      if (transaction.isIncome &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year) {
        income += transaction.amount;
      }
    }
    return income;
  }

  // calculate all expense of all transactions
  double getExpense(UserModel user, DateTime date) {
    double expense = 0;
    for (var transaction in user.transactions) {
      if (!transaction.isIncome &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year) {
        expense += transaction.amount;
      }
    }
    return expense;
  }
}

UserModel user = UserModel(
  id: 0,
  accounts: [...defaultAccounts],
  transactions: [],
  incomeCategories: [...defaultIncomeCategories],
  expenseCategories: [...defaultExpenseCategories],
);
