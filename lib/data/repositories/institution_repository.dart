import 'package:wallet_app/data/data.dart';

class InstitutionRepository {
  InstitutionRepository();

  Future<List<InstitutionModel>> getInstitutions() async {
    return defaultInstitutions;
  }
}

List<InstitutionModel> defaultInstitutions = [
  wallet,
  mercadoPagoInstitution,
  bbvaInstitution,
  hsbcInstitution,
  savingsInstitution,
];

List<InstitutionModel> defaultCardTypes = [
  visaInstitution,
  mastercardInstitution,
];

InstitutionModel wallet = InstitutionModel(
  id: 0,
  name: 'Efectivo',
  logo: 'assets/icons/institutions/money.png',
  backgroundColor: green,
  logoColor: green,
  textColor: white,
);

InstitutionModel hsbcInstitution = InstitutionModel(
  id: 1,
  name: 'HSBC',
  logo: 'assets/icons/institutions/hsbc.png',
  backgroundColor: white,
  logoColor: hsbcColor,
  textColor: white,
  visaCardColor: silver,
  masterCardColor: deepPurple,
);

InstitutionModel bbvaInstitution = InstitutionModel(
  id: 2,
  name: 'BBVA',
  logo: 'assets/icons/institutions/bbva.png',
  backgroundColor: white,
  logoColor: bbvaColor,
  textColor: white,
  visaCardColor: bbvaColor,
  masterCardColor: bbvaColor,
);

InstitutionModel mercadoPagoInstitution = InstitutionModel(
  id: 3,
  name: 'Mercado Pago',
  logo: 'assets/icons/institutions/mercado_pago.png',
  backgroundColor: white,
  logoColor: mercadoPagoColor,
  textColor: white,
);

InstitutionModel savingsInstitution = InstitutionModel(
  id: 4,
  name: 'Ahorros',
  logo: 'assets/icons/institutions/savings.png',
  backgroundColor: green,
  logoColor: green,
  textColor: white,
);

InstitutionModel visaInstitution = InstitutionModel(
  id: 5,
  name: 'Visa',
  logo: 'assets/icons/institutions/visa.png',
  backgroundColor: white,
);

InstitutionModel mastercardInstitution = InstitutionModel(
  id: 6,
  name: 'Mastercard',
  logo: 'assets/icons/institutions/mastercard.png',
  backgroundColor: white,
);
