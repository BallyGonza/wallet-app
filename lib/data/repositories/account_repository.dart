import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class AccountRepository {
  AccountRepository();

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  // update accounts of the user
  Future<void> updateAccounts(
      UserModel user, List<AccountModel> accounts) async {
    user.accounts = accounts;
    await box.put(user.id, user);
  }

  List<TransactionModel> getTransactionsByAccount(
    AccountModel account,
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    final List<TransactionModel> accountTransactions = transactions
        .where((transaction) =>
            transaction.account.id == account.id &&
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
    // sort transactions by date
    accountTransactions.sort((a, b) => b.date.compareTo(a.date));
    return accountTransactions;
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
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    return transactions
        .where((transaction) =>
            transaction.account.institution.id == institution.id &&
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  double getTotalIncomes(
    AccountModel account,
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    double income = 0;
    for (var transaction in transactions) {
      if (transaction.account.id == account.id &&
          transaction.category.isIncome &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        income += transaction.amount;
      }
    }
    return income;
  }

  double getTotalExpenses(
    AccountModel account,
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    double expenses = 0;
    for (var transaction in transactions) {
      if (transaction.account.id == account.id &&
          !transaction.category.isIncome &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        expenses += transaction.amount;
      }
    }
    return expenses;
  }

  double getBalance(
    AccountModel account,
    List<TransactionModel> transactions,
    DateTime date,
  ) {
    double balance = 0;
    for (var transaction in transactions) {
      if (transaction.account.id == account.id &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        balance += transaction.amount;
      }
    }
    return balance;
  }
}

List<AccountModel> defaultAccounts = [];

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
