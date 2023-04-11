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
          transaction.date.year <= date.year) {
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
          transaction.category.name != 'Transfer in') {
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
