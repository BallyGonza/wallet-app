import 'package:wallet_app/data/data.dart';

class InstitutionRepository {
  InstitutionRepository();

  Future<List<InstitutionModel>> getInstitutions() async {
    return defaultInstitutions;
  }
}

List<InstitutionModel> defaultInstitutions = [
  wallet,
  hsbcInstitution,
  bbvaInstitution,
  mercadoPagoInstitution
];

List<InstitutionModel> defaultCardTypes = [
  visaInstitution,
  mastercardInstitution,
];

InstitutionModel wallet = InstitutionModel(
  id: 0,
  name: 'Efectivo',
  image: 'assets/icons/institutions/money.png',
  color: green,
  secondaryColor: green,
  textColor: white,
);

InstitutionModel hsbcInstitution = InstitutionModel(
  id: 1,
  name: 'HSBC',
  image: 'assets/icons/institutions/hsbc.png',
  color: white,
  secondaryColor: hsbcColor,
  textColor: white,
);

InstitutionModel bbvaInstitution = InstitutionModel(
  id: 2,
  name: 'BBVA',
  image: 'assets/icons/institutions/bbva.png',
  color: white,
  secondaryColor: bbvaColor,
  textColor: white,
);

InstitutionModel mercadoPagoInstitution = InstitutionModel(
  id: 3,
  name: 'Mercado Pago',
  image: 'assets/icons/institutions/mercado_pago.png',
  color: white,
  secondaryColor: mercadoPagoColor,
  textColor: white,
);

InstitutionModel savingsInstitution = InstitutionModel(
  id: 4,
  name: 'Ahorros',
  image: 'assets/icons/institutions/savings.png',
  color: green,
  secondaryColor: green,
  textColor: white,
);

InstitutionModel visaInstitution = InstitutionModel(
  id: 5,
  name: 'Visa',
  image: 'assets/icons/institutions/visa.png',
  color: white,
  secondaryColor: white,
  textColor: white,
);

InstitutionModel mastercardInstitution = InstitutionModel(
  id: 6,
  name: 'Mastercard',
  image: 'assets/icons/institutions/mastercard.png',
  color: white,
  secondaryColor: white,
  textColor: white,
);
