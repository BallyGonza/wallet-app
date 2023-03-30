import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/data/repositories/institution_repository.dart';

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
  institution: wallet,
  color: 0xFFE0E0E0,
  includeInTotal: true,
  isHidden: false,
  registers: [],
);

AccountModel hsbc = AccountModel(
  id: '2',
  name: 'HSBC',
  description: '',
  balance: 0,
  type: moneyType,
  institution: hSBC,
  color: 0xFFE0E0E0,
  includeInTotal: true,
  isHidden: false,
  registers: [],
);

List<AccountModel> defaultAccounts = [cash, hsbc];
