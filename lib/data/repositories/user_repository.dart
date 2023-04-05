import 'package:wallet_app/data/data.dart';

class UserRepository {
  UserRepository();

  Future<UserModel> getUser() async {
    return user;
  }

  // calculate balance of account
  double getAccountBalance(
      AccountModel account, List<TransactionModel> transactions) {
    double balance = 0;
    for (var transaction in transactions) {
      if (transaction.account.name == account.name) {
        balance += transaction.amount;
      }
    }
    return balance;
  }

  // calculate all income of all transactions

  double getIncome(UserModel user) {
    double income = 0;
    for (var transaction in user.transactions) {
      if (transaction.isIncome) {
        income += transaction.amount;
      }
    }
    return income;
  }

  // calculate all expense of all transactions
  double getExpense(UserModel user) {
    double expense = 0;
    for (var transaction in user.transactions) {
      if (!transaction.isIncome) {
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
