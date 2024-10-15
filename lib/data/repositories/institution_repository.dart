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
  santanderInstitution,
  provinciaInstitution,
  nacionInstitution,
  personalPayInstitution,
  pedidosYaInstitution,
  nubizInstitution,
  savingsInstitution,
];

List<InstitutionModel> defaultBankInstitutions = [
  bbvaInstitution,
  hsbcInstitution,
  naranjaXInstitution,
  galiciaInstitution,
  santanderInstitution,
  provinciaInstitution,
  nacionInstitution,
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
  id: 8,
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
  id: 9,
  name: 'Prex',
  icon: 'assets/icons/institutions/prex/prex_icon.png',
  logo: 'assets/icons/institutions/prex/prex_logo.png',
  backgroundColor: prexColor,
  logoColor: prexColor,
);

InstitutionModel americanExpressInstitution = InstitutionModel(
  id: 10,
  name: 'American Express',
  icon: 'assets/icons/institutions/american_express/american_express_icon.png',
  logo: 'assets/icons/institutions/american_express/american_express_logo.png',
  backgroundColor: amexColor,
  logoColor: amexColor,
);

InstitutionModel personalPayInstitution = InstitutionModel(
  id: 11,
  name: 'Personal Pay',
  icon: 'assets/icons/institutions/personal_pay/personal_pay_icon.png',
  logo: 'assets/icons/institutions/personal_pay/personal_pay_logo.png',
  backgroundColor: personalPayColor,
  logoColor: white,
);

InstitutionModel pedidosYaInstitution = InstitutionModel(
  id: 12,
  name: 'Pedidos Ya',
  icon: 'assets/icons/institutions/pedidos_ya/pedidos_ya_icon.png',
  logo: 'assets/icons/institutions/pedidos_ya/pedidos_ya_logo.png',
  backgroundColor: pedidosYaColor,
  logoColor: pedidosYaColor,
);

InstitutionModel nubizInstitution = InstitutionModel(
  id: 13,
  name: 'Nubiz',
  icon: 'assets/icons/institutions/nubiz/nubiz_icon.png',
  logo: 'assets/icons/institutions/nubiz/nubiz_logo.png',
  backgroundColor: nubizColor,
  logoColor: nubizColor,
);

InstitutionModel santanderInstitution = InstitutionModel(
  id: 14,
  name: 'Santander',
  icon: 'assets/icons/institutions/santander/santander_icon.png',
  logo: 'assets/icons/institutions/santander/santander_logo.png',
  backgroundColor: white,
  logoColor: red,
);

InstitutionModel provinciaInstitution = InstitutionModel(
  id: 15,
  name: 'Provincia',
  icon: 'assets/icons/institutions/provincia/provincia_icon.png',
  logo: 'assets/icons/institutions/provincia/provincia_logo.png',
  backgroundColor: white,
  logoColor: green,
);

InstitutionModel nacionInstitution = InstitutionModel(
  id: 16,
  name: 'Nación',
  icon: 'assets/icons/institutions/nacion/nacion_icon.png',
  logo: 'assets/icons/institutions/nacion/nacion_logo.png',
  backgroundColor: white,
  logoColor: blue,
);
