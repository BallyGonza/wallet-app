import 'package:wallet_app/data/data.dart';

class UserRepository {
  UserRepository();

  Future<UserModel> getUser() async {
    return defaultUser;
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
      if (transaction.category.isIncome &&
          transaction.date.month == date.month &&
          transaction.date.year == date.year &&
          transaction.category.name != 'Transfer in') {
        income += transaction.amount;
      }
    }
    return income;
  }

  double getIncomeByAccount(AccountModel account,
      List<TransactionModel> transactions, DateTime date) {
    double income = 0;
    for (var transaction in transactions) {
      if (transaction.account.name == account.name &&
          transaction.category.isIncome &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year &&
          transaction.category.name != 'Transfer in') {
        income += transaction.amount;
      }
    }
    return income;
  }

  double getExpenseByAccount(AccountModel account,
      List<TransactionModel> transactions, DateTime date) {
    double expense = 0;
    for (var transaction in transactions) {
      if (transaction.account.name == account.name &&
          !transaction.category.isIncome &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year &&
          transaction.category.name != 'Transfer out') {
        expense += transaction.amount;
      }
    }
    return expense;
  }

  // calculate all expense of all transactions
  double getExpense(UserModel user, DateTime date) {
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

// calcula el total de tarjeta de acuerdo al mes y año
  double getTotalOfCreditCard(
    CreditCardModel creditCard,
    DateTime date,
    List<CreditCardTransactionModel> creditCardExpenses,
  ) {
    double total = 0;

    for (var transaction in creditCardExpenses) {
      int currentCuota =
          1 + (transaction.date.difference(date).inDays / 30).round().abs();
      if (transaction.creditCard.institution.name ==
          creditCard.institution.name) {
        if (transaction.date.month <= date.month &&
            transaction.date.year <= date.year) {
          if (currentCuota <= transaction.cuotas) {
            total += transaction.amount / transaction.cuotas;
          }
        }
      }
    }
    return total;
  }

// calcula el valor de la cuota de una transaccion
  double getValueCuota(CreditCardTransactionModel transaction) {
    return transaction.amount / transaction.cuotas;
  }

  getTransactionsByAccount(AccountModel account,
      List<TransactionModel> transactions, DateTime date) {
    List<TransactionModel> transactionsByAccount = [];
    for (var transaction in transactions) {
      if (transaction.account.name == account.name &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        transactionsByAccount.add(transaction);
      }
    }
    return transactionsByAccount;
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
