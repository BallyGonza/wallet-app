import 'package:wallet_app/data/data.dart';

class CreditCardRepository {
  CreditCardRepository();

  Future<List<CreditCardModel>> getCreditCards() async {
    return defaultCreditCards;
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
