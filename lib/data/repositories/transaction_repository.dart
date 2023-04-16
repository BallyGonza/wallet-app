import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class TransactionRepository {
  TransactionRepository();

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  // update transactions of the user
  Future<void> updateTransactions(
      UserModel user, List<TransactionModel> transactions) async {
    transactions.sort((a, b) => a.date.compareTo(b.date));
    user.transactions = transactions;
    await box.put(user.id, user);
  }

  // update creditCard Expenses of the user
  Future<void> updateCreditCardExpenses(UserModel user,
      List<CreditCardTransactionModel> creditCardExpenses) async {
    creditCardExpenses.sort((a, b) => a.date.compareTo(b.date));
    user.creditCardExpenses = creditCardExpenses;
    await box.put(user.id, user);
  }
}
