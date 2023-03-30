import 'package:wallet_app/data/data.dart';

class AccountRepository {
  AccountRepository();

  Future<List<AccountModel>> getAccounts() async {
    return defaultAccounts;
  }
}

AccountModel cash = AccountModel(
  id: '1',
  name: 'Efectivo',
  description: '',
  balance: 0,
  type: moneyType,
  color: 0xFFE0E0E0,
  includeInTotal: true,
  isHidden: false,
  registers: [],
);

List<AccountModel> defaultAccounts = [cash];
