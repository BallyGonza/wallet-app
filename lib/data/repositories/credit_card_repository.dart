import 'package:wallet_app/data/data.dart';

class CreditCardRepository {
  CreditCardRepository();

  Future<List<CreditCardModel>> getCreditCards() async {
    return defaultCreditCards;
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

List<CreditCardModel> defaultCreditCards = [];

CreditCardModel visa0 = CreditCardModel(
  id: 0,
  name: 'Gonzalo Bally',
  number: '**** **** **** 1234',
  institution: bbvaInstitution,
  cardType: visaInstitution,
);

CreditCardModel mastercard0 = CreditCardModel(
  id: 1,
  name: 'Gonzalo Bally',
  number: '**** **** **** 1234',
  institution: bbvaInstitution,
  cardType: mastercardInstitution,
);

CreditCardModel visa1 = CreditCardModel(
  id: 2,
  name: 'M. Florencia Iglesias',
  number: '**** **** **** 1234',
  institution: hsbcInstitution,
  cardType: visaInstitution,
);

CreditCardModel mastercard1 = CreditCardModel(
  id: 3,
  name: 'M. Florencia Iglesias',
  number: '**** **** **** 1234',
  institution: hsbcInstitution,
  cardType: mastercardInstitution,
);
