import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class CreditCardRepository {
  CreditCardRepository();

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  final UserRepository userRepository = UserRepository();

  // Get all credit cards
  Future<List<CreditCardModel>> getCreditCards() async {
    final user = await userRepository.getUser();
    return user.creditCards;
  }

  // Add a credit card
  Future<void> addCreditCard(CreditCardModel creditCard) async {
    final user = await userRepository.getUser();
    user.creditCards.add(creditCard);
    await userRepository.saveUser(user);
  }

  // Remove a credit card
  Future<void> removeCreditCard(CreditCardModel creditCard) async {
    final user = await userRepository.getUser();
    user.creditCards.remove(creditCard);
    await userRepository.saveUser(user);
  }

  // Update a credit card
  Future<void> updateCreditCard(CreditCardModel creditCard) async {
    final user = await userRepository.getUser();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .update(creditCard);
    await userRepository.saveUser(user);
  }

  // Add a transaction to a credit card
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

  // Remove a transaction from a credit card
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

  // Get total of credit card by date
  double getTotalOfCreditCard(
    CreditCardModel creditCard,
    DateTime date,
  ) {
    double total = 0;
    for (var transaction in creditCard.expenses) {
      total += transaction.amount / transaction.cuotas;
    }
    return total;
  }

  // Get transactions by credit card
  List<CreditCardTransactionModel> getTransactionsByCreditCard(
      CreditCardModel creditCard, DateTime date) {
    List<CreditCardTransactionModel> creditCardExpenses = creditCard.expenses;
    creditCardExpenses.sort((a, b) => b.date.compareTo(a.date));
    return creditCardExpenses = creditCardExpenses
        .where((element) =>
            element.cuotas >=
            (element.date.difference(date).inDays / 30).round().abs())
        .toList();
  }

  // Pay a credit card
  Future<void> pay(CreditCardModel creditCard, DateTime date) async {
    final user = await userRepository.getUser();
    final cuota = (date.month - creditCard.expenses.first.date.month).abs();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .expenses
        .removeWhere((element) => element.cuotas <= cuota);
    await userRepository.saveUser(user);
  }
}
