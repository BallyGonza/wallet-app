import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class CreditCardRepository {
  CreditCardRepository();

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  // update credit cards of the user
  Future<void> updateCreditCards(
      UserModel user, List<CreditCardModel> creditCards) async {
    user.creditCards = creditCards;
    await box.put(user.id, user);
  }

  double getTotalOfCreditCard(
    CreditCardModel creditCard,
    DateTime date,
    List<CreditCardTransactionModel> creditCardExpenses,
  ) {
    double total = 0;
    for (var transaction in creditCardExpenses) {
      int currentCuota =
          (transaction.date.difference(date).inDays / 30).round().abs();
      if (transaction.creditCard.institution.name ==
              creditCard.institution.name &&
          transaction.creditCard.cardType.name == creditCard.cardType.name) {
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

  List<CreditCardTransactionModel> getTransactionsByCreditCard(
      CreditCardModel creditCard,
      List<CreditCardTransactionModel> transactions,
      DateTime date) {
    var creditCardExpenses = transactions
        .where((element) => element.creditCard.id == creditCard.id)
        .toList();

    // sort transactions by date
    creditCardExpenses.sort((a, b) => b.date.compareTo(a.date));

    return creditCardExpenses = creditCardExpenses
        .where((element) =>
            element.cuotas >=
            (element.date.difference(date).inDays / 30).round().abs())
        .toList();
  }
}
