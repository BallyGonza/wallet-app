import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class CreditCardRepository {
  CreditCardRepository();

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  final UserRepository userRepository = UserRepository();

  Future<List<CreditCardModel>> getCreditCards() async {
    final user = await userRepository.getUser();
    return user.creditCards;
  }

  Future<void> addCreditCard(CreditCardModel creditCard) async {
    final user = await userRepository.getUser();
    user.creditCards.add(creditCard);
    await userRepository.saveUser(user);
  }

  Future<void> removeCreditCard(CreditCardModel creditCard) async {
    final user = await userRepository.getUser();
    user.creditCards.remove(creditCard);
    await userRepository.saveUser(user);
  }

  Future<void> addTransaction(
    CreditCardModel creditCard,
    CreditCardTransactionModel creditCardTransaction,
  ) async {
    final user = await userRepository.getUser();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .expenses
        .add(creditCardTransaction);
    await userRepository.saveUser(user);
  }

  Future<void> removeTransaction(
    CreditCardModel creditCard,
    CreditCardTransactionModel creditCardTransaction,
  ) async {
    final user = await userRepository.getUser();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .expenses
        .remove(creditCardTransaction);
    await userRepository.saveUser(user);
  }

  double getTotalOfCreditCard(
    CreditCardModel creditCard,
    DateTime date,
  ) {
    double total = 0;
    for (var transaction in creditCard.expenses) {
      int currentCuota =
          (transaction.date.difference(date).inDays / 30).round().abs();
      if (transaction.cuotas >= currentCuota) {
        total += transaction.amount;
      }
    }
    return total;
  }

  List<CreditCardTransactionModel> getTransactionsByCreditCard(
      CreditCardModel creditCard, DateTime date) {
    List<CreditCardTransactionModel> creditCardExpenses = creditCard.expenses;
    // sort transactions by date
    creditCardExpenses.sort((a, b) => b.date.compareTo(a.date));

    return creditCardExpenses = creditCardExpenses
        .where((element) =>
            element.cuotas >=
            (element.date.difference(date).inDays / 30).round().abs())
        .toList();
  }
}
