import 'package:wallet_app/data/data.dart';

class TransactionRepository {
  TransactionRepository();

  UserRepository userRepository = UserRepository();

  // get all transactions of the user
  Future<List<TransactionModel>> getTransactions() async {
    final user = await UserRepository().getUser();
    List<TransactionModel> transactions = [];
    for (final account in user.accounts) {
      transactions.addAll(account.transactions);
    }
    return transactions;
  }

  // add transaction to user account
  Future<void> addTransaction(
      AccountModel account, TransactionModel transaction) async {
    final user = await userRepository.getUser();
    account.transactions.add(transaction);
    await userRepository.saveUser(user);
  }

  // remove transaction from user account
  Future<void> removeTransaction(
      AccountModel account, TransactionModel transaction) async {
    final user = await UserRepository().getUser();
    account.transactions.remove(transaction);
    await UserRepository().saveUser(user);
  }

  // update creditCard Expenses of the user
  Future<void> updateCreditCardExpenses(UserModel user,
      List<CreditCardTransactionModel> creditCardExpenses) async {
    creditCardExpenses.sort((a, b) => a.date.compareTo(b.date));
  }

  getAccount(UserModel user, TransactionModel transaction) {
    for (final account in user.accounts) {
      if (account.transactions.contains(transaction)) {
        return account;
      }
    }
  }
}
