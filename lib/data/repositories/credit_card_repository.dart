import 'package:wallet_app/data/data.dart';

class CreditCardRepository {
  CreditCardRepository();

  Future<List<CreditCardModel>> getCreditCards() async {
    return defaultCreditCards;
  }
}

List<CreditCardModel> defaultCreditCards = [
  visa0,
  visa1,
  mastercard0,
  mastercard1,
];

CreditCardModel visa0 = CreditCardModel(
  id: 0,
  name: 'Gonzalo Bally',
  number: '**** **** **** 1234',
  institution: bbvaInstitution,
  cardType: visaInstitution,
  limit: 10000,
  dueDate: DateTime(2021, 10, 10),
  transactions: [
    CreditCardTransactionModel(
      id: 0,
      note: 'Compra en supermercado',
      amount: 15000,
      date: DateTime(2023, 04, 01),
      category: shopping,
      account: bbva,
      isReccurent: false,
      cuotas: 3,
    ),
  ],
);

CreditCardModel mastercard0 = CreditCardModel(
  id: 1,
  name: 'Gonzalo Bally',
  number: '**** **** **** 1234',
  institution: bbvaInstitution,
  cardType: mastercardInstitution,
  limit: 10000,
  dueDate: DateTime(2022, 12, 12),
  transactions: [],
);

CreditCardModel visa1 = CreditCardModel(
  id: 2,
  name: 'M. Florencia Iglesias',
  number: '**** **** **** 1234',
  institution: hsbcInstitution,
  cardType: visaInstitution,
  limit: 10000,
  dueDate: DateTime(2021, 10, 10),
  transactions: [],
);

CreditCardModel mastercard1 = CreditCardModel(
  id: 3,
  name: 'M. Florencia Iglesias',
  number: '**** **** **** 1234',
  institution: hsbcInstitution,
  cardType: mastercardInstitution,
  limit: 10000,
  dueDate: DateTime(2021, 10, 10),
  transactions: [],
);
