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
  prexInstitution,
  galiciaInstitution,
  hsbcInstitution,
  naranjaXInstitution,
  bbvaInstitution,
  savingsInstitution,
];

List<InstitutionModel> defaultBankInstitutions = [
  bbvaInstitution,
  hsbcInstitution,
  naranjaXInstitution,
  galiciaInstitution,
];

List<InstitutionModel> defaultCardTypes = [
  visaInstitution,
  mastercardInstitution,
  americanExpressInstitution,
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
  logoColor: blue,
);

InstitutionModel mastercardInstitution = InstitutionModel(
  id: 6,
  name: 'Master Card',
  logo: 'assets/icons/institutions/mastercard.png',
  backgroundColor: white,
  logoColor: red,
);

InstitutionModel naranjaXInstitution = InstitutionModel(
  id: 7,
  name: 'Naranja X',
  logo: 'assets/icons/institutions/naranja.png',
  backgroundColor: white,
  logoColor: naranjaColor,
);

InstitutionModel galiciaInstitution = InstitutionModel(
  id: 7,
  name: 'Galicia',
  logo: 'assets/icons/institutions/galicia.png',
  backgroundColor: galiciaColor,
  visaCardColor: orange,
  masterCardColor: orange,
  americianExpressColor: orange,
  logoColor: galiciaColor,
);

InstitutionModel prexInstitution = InstitutionModel(
  id: 8,
  name: 'Prex',
  logo: 'assets/icons/institutions/prex.png',
  backgroundColor: prexColor,
  logoColor: prexColor,
);

InstitutionModel americanExpressInstitution = InstitutionModel(
  id: 9,
  name: 'American Express',
  logo: 'assets/icons/institutions/american.png',
  backgroundColor: white,
  logoColor: blue,
);
