import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/data/repositories/institution_repository.dart';

class AccountRepository {
  AccountRepository();

  Future<List<AccountModel>> getAccounts() async {
    return defaultAccounts;
  }
}

List<AccountModel> defaultAccounts = [cash, hsbc];

AccountModel cash = AccountModel(
  id: 0,
  name: 'Efectivo',
  institution: wallet,
  color: 0xFFE0E0E0,
);

AccountModel hsbc = AccountModel(
  id: 1,
  name: 'HSBC',
  institution: hSBC,
  color: 0xFFE0E0E0,
);
