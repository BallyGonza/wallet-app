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
  secondaryColor: red,
  textColor: white,
);

InstitutionModel bbvaInstitution = InstitutionModel(
  id: 2,
  name: 'BBVA',
  image: 'assets/icons/institutions/bbva.png',
  color: white,
  secondaryColor: blue,
  textColor: white,
);

InstitutionModel mercadoPagoInstitution = InstitutionModel(
  id: 3,
  name: 'Mercado Pago',
  image: 'assets/icons/institutions/mercado_pago.png',
  color: white,
  secondaryColor: lightBlue,
  textColor: white,
);

InstitutionModel savingsInstitution = InstitutionModel(
  id: 0,
  name: 'Ahorros',
  image: 'assets/icons/institutions/savings.png',
  color: green,
  secondaryColor: green,
  textColor: white,
);
