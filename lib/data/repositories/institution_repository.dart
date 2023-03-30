import 'package:wallet_app/data/data.dart';

class AccountRepository {
  AccountRepository();

  Future<List<AccountModel>> getAccounts() async {
    return defaultAccounts;
  }
}

InstitutionModel wallet = const InstitutionModel(
  id: '0',
  name: 'Efectivo',
  image: 'assets/icons/institutions/money.png',
  color: 0xFF2ab22a,
);

InstitutionModel hSBC = const InstitutionModel(
  id: '1',
  name: 'HSBC',
  image: 'assets/icons/institutions/hsbc.png',
  color: 0xFFE0E0E0,
);

InstitutionModel bBVA = const InstitutionModel(
  id: '2',
  name: 'BBVA',
  image: '',
  color: 0xFFE0E0E0,
);

InstitutionModel mercadoPago = const InstitutionModel(
  id: '3',
  name: 'Mercado Pago',
  image: '',
  color: 0xFFE0E0E0,
);
