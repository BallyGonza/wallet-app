import 'package:wallet_app/data/data.dart';

class AccountRepository {
  AccountRepository();

  Future<List<AccountModel>> getAccounts() async {
    return defaultAccounts;
  }
}

AccountModel cash = AccountModel(
  id: '1',
  name: 'Cash',
  description: '',
  balance: 0,
  type: cashType,
  color: 0xFFE0E0E0,
  includeInTotal: true,
  isHidden: false,
  registers: [],
);

List<AccountModel> defaultAccounts = [cash];
