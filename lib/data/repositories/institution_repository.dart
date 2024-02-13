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
  pago24Institution,
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
  icon: 'assets/icons/institutions/money/money_icon.png',
  logo: 'assets/icons/institutions/money/money_icon.png',
  backgroundColor: green,
  logoColor: green,
  textColor: white,
);

InstitutionModel hsbcInstitution = InstitutionModel(
  id: 1,
  name: 'HSBC',
  icon: 'assets/icons/institutions/hsbc/hsbc_icon.png',
  logo: 'assets/icons/institutions/hsbc/hsbc_logo.png',
  backgroundColor: white,
  logoColor: hsbcColor,
  textColor: white,
  visaCardColor: silver,
  masterCardColor: deepPurple,
);

InstitutionModel bbvaInstitution = InstitutionModel(
  id: 2,
  name: 'BBVA',
  icon: 'assets/icons/institutions/bbva/bbva_icon.png',
  logo: 'assets/icons/institutions/bbva/bbva_logo.png',
  backgroundColor: white,
  logoColor: bbvaColor,
  textColor: white,
  visaCardColor: bbvaColor,
  masterCardColor: bbvaColor,
);

InstitutionModel mercadoPagoInstitution = InstitutionModel(
  id: 3,
  name: 'Mercado Pago',
  icon: 'assets/icons/institutions/mercado_pago/mercado_pago_icon.png',
  logo: 'assets/icons/institutions/mercado_pago/mercado_pago_logo.png',
  backgroundColor: white,
  logoColor: mercadoPagoColor,
  textColor: white,
);

InstitutionModel savingsInstitution = InstitutionModel(
  id: 4,
  name: 'Ahorros',
  icon: 'assets/icons/institutions/savings/savings_icon.png',
  logo: 'assets/icons/institutions/savings/savings_icon.png',
  backgroundColor: green,
  logoColor: green,
  textColor: white,
);

InstitutionModel visaInstitution = InstitutionModel(
  id: 5,
  name: 'Visa',
  icon: 'assets/icons/institutions/visa/visa_icon.png',
  logo: 'assets/icons/institutions/visa/visa_logo.png',
  backgroundColor: white,
  logoColor: blue,
);

InstitutionModel mastercardInstitution = InstitutionModel(
  id: 6,
  name: 'Master Card',
  icon: 'assets/icons/institutions/master_card/master_card_icon.png',
  logo: 'assets/icons/institutions/master_card/master_card_logo.png',
  backgroundColor: white,
  logoColor: red,
);

InstitutionModel naranjaXInstitution = InstitutionModel(
  id: 7,
  name: 'Naranja X',
  icon: 'assets/icons/institutions/naranja_x/naranja_x_icon.png',
  logo: 'assets/icons/institutions/naranja_x/naranja_x_logo.png',
  backgroundColor: white,
  logoColor: naranjaColor,
);

InstitutionModel galiciaInstitution = InstitutionModel(
  id: 7,
  name: 'Galicia',
  icon: 'assets/icons/institutions/galicia/galicia_icon.png',
  logo: 'assets/icons/institutions/galicia/galicia_logo.png',
  backgroundColor: galiciaColor,
  visaCardColor: orange,
  masterCardColor: orange,
  americianExpressColor: orange,
  logoColor: galiciaColor,
);

InstitutionModel prexInstitution = InstitutionModel(
  id: 8,
  name: 'Prex',
  icon: 'assets/icons/institutions/prex/prex_icon.png',
  logo: 'assets/icons/institutions/prex/prex_logo.png',
  backgroundColor: prexColor,
  logoColor: prexColor,
);

InstitutionModel americanExpressInstitution = InstitutionModel(
  id: 9,
  name: 'American Express',
  icon: 'assets/icons/institutions/american_express/american_express_icon.png',
  logo: 'assets/icons/institutions/american_express/american_express_logo.png',
  backgroundColor: amexColor,
  logoColor: blue,
);

InstitutionModel pago24Institution = InstitutionModel(
  id: 10,
  name: 'Pago 24',
  icon: 'assets/icons/institutions/pago_24/pago_24_icon.png',
  logo: 'assets/icons/institutions/pago_24/pago_24_logo.png',
  backgroundColor: white,
  logoColor: amexColor,
);
