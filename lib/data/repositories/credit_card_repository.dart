// ignore_for_file: cascade_invocations

import 'package:wallet_app/data/data.dart';

class CreditCardRepository {
  CreditCardRepository();

  final UserRepository userRepository = UserRepository();
  UserModel? _cachedUser;

  // Get user
  Future<UserModel> _getUser() async {
    _cachedUser ??= await userRepository.getUser();
    return _cachedUser!;
  }

  // Get all credit cards
  Future<List<CreditCardModel>> getCreditCards() async {
    final user = await _getUser();
    return user.creditCards;
  }

  // Add a credit card
  Future<void> addCreditCard(CreditCardModel creditCard) async {
    final user = await _getUser();
    user.creditCards.add(creditCard);
    await userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Remove a credit card
  Future<void> removeCreditCard(CreditCardModel creditCard) async {
    final user = await _getUser();
    user.creditCards.remove(creditCard);
    await userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Update a credit card
  Future<void> updateCreditCard(CreditCardModel creditCard) async {
    final user = await _getUser();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .update(creditCard);
    await userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Add a transaction to a credit card
  Future<void> addTransaction(
    CreditCardModel creditCard,
    CreditCardTransactionModel creditCardTransaction,
  ) async {
    final user = await _getUser();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .expenses
        .add(creditCardTransaction);
    await userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Remove a transaction from a credit card
  Future<void> removeTransaction(
    CreditCardModel creditCard,
    CreditCardTransactionModel creditCardTransaction,
  ) async {
    final user = await _getUser();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .expenses
        .remove(creditCardTransaction);
    await userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Get total of credit card by date
  double getTotalOfCreditCard(
    CreditCardModel creditCard,
    DateTime date,
  ) {
    var total = 0.0;
    for (final transaction in creditCard.expenses) {
      total += transaction.amount / transaction.cuotas;
    }
    return total;
  }

  // Get transactions by credit card
  List<CreditCardTransactionModel> getTransactionsByCreditCard(
    CreditCardModel creditCard,
    DateTime date,
  ) {
    var creditCardExpenses = creditCard.expenses;
    creditCardExpenses.sort((a, b) => b.date.compareTo(a.date));
    return creditCardExpenses = creditCardExpenses
        .where(
          (element) =>
              element.cuotas >=
              (element.date.difference(date).inDays / 30).round().abs(),
        )
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
