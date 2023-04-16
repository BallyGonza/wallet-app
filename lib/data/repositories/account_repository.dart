import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class AccountRepository {
  AccountRepository();

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  List<TransactionModel> getTransactionsByAccount(
    AccountModel account,
    UserModel user,
    DateTime date,
  ) {
    return account.transactions
        .where((transaction) =>
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
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
    UserModel user,
    DateTime date,
  ) {
    final List<TransactionModel> institutionTransactions = [];
    for (var account in user.accounts) {
      if (account.institution.id == institution.id) {
        institutionTransactions.addAll(account.transactions);
      }
    }
    return institutionTransactions
        .where((transaction) =>
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
  }

  double getTotalIncomes(
    UserModel user,
    DateTime date,
  ) {
    double income = 0;
    for (var account in user.accounts) {
      for (var transaction in account.transactions) {
        if (transaction.category.isIncome &&
            transaction.date.month <= date.month &&
            transaction.date.year <= date.year) {
          income += transaction.amount;
        }
      }
    }
    return income;
  }

  double getTotalExpenses(
    UserModel user,
    DateTime date,
  ) {
    double expenses = 0;
    for (var account in user.accounts) {
      for (var transaction in account.transactions) {
        if (!transaction.category.isIncome &&
            transaction.date.month <= date.month &&
            transaction.date.year <= date.year) {
          expenses += transaction.amount;
        }
      }
    }
    return expenses;
  }

  double getBalance(
    AccountModel account,
    DateTime date,
  ) {
    double balance = 0;
    for (var transaction in account.transactions) {
      if (transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        balance += transaction.amount;
      }
    }
    return balance;
  }
}

List<AccountModel> defaultAccounts = [cash];

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
