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
    await _saveUserAndClearCache(user);
  }

  // Remove a credit card
  Future<void> removeCreditCard(CreditCardModel creditCard) async {
    final user = await _getUser();
    user.creditCards.remove(creditCard);
    await _saveUserAndClearCache(user);
  }

  // Update a credit card
  Future<void> updateCreditCard(CreditCardModel creditCard) async {
    final user = await _getUser();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .update(creditCard);
    await _saveUserAndClearCache(user);
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
    await _saveUserAndClearCache(user);
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
    await _saveUserAndClearCache(user);
  }

  // Get total of credit card by date
  double getTotalOfCreditCard(
    CreditCardModel creditCard,
    DateTime date,
  ) {
    return creditCard.expenses.fold(0, (total, transaction) {
      return total + transaction.amount / transaction.cuotas;
    });
  }

  // Get transactions by credit card
  List<CreditCardTransactionModel> getTransactionsByCreditCard(
    CreditCardModel creditCard,
    DateTime date,
  ) {
    final sortedExpenses =
        List<CreditCardTransactionModel>.from(creditCard.expenses)
          ..sort((a, b) => b.date.compareTo(a.date));

    return sortedExpenses.where((element) {
      final monthsDifference =
          (element.date.difference(date).inDays / 30).round().abs();
      return element.cuotas >= monthsDifference;
    }).toList();
  }

  // Pay a credit card
  Future<void> pay(CreditCardModel creditCard, DateTime date) async {
    final user = await _getUser();
    final monthsDifference =
        (date.month - creditCard.expenses.first.date.month).abs();
    user.creditCards
        .firstWhere((element) => element.id == creditCard.id)
        .expenses
        .removeWhere((element) => element.cuotas <= monthsDifference);
    await _saveUserAndClearCache(user);
  }

  // Save user and clear cache
  Future<void> _saveUserAndClearCache(UserModel user) async {
    await userRepository.saveUser(user);
    _cachedUser = null;
  }
}
