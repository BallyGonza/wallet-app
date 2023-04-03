import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/data/repositories/currency_repository.dart';
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
  currency: pesoArg,
  transactions: [
    // TransactionModel(
    //   id: '1',
    //   amount: 100,
    //   date: DateTime.now(),
    //   account: cash,
    //   category: salary,
    //   isRecurrent: false,
    //   isIncome: true,
    //   description: 'Salario',
    //   tags: [],
    //   attachment: '',
    // ),
  ],
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
  currency: pesoArg,
  transactions: [],
);

List<AccountModel> defaultAccounts = [cash, hsbc];
