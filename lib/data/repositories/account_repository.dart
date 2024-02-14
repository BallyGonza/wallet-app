import 'package:wallet_app/data/data.dart';

class AccountRepository {
  AccountRepository();
  UserModel? _cachedUser;

  final UserRepository _userRepository = UserRepository();

  // get user
  Future<UserModel> _getUser() async {
    _cachedUser ??= await _userRepository.getUser();
    return _cachedUser!;
  }

  Future<List<AccountModel>> getAccounts() async {
    final user = await _userRepository.getUser();
    return user.accounts;
  }

  // Add account to user
  Future<void> addAccount(AccountModel account) async {
    final user = await _getUser();
    user.accounts.add(account);
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Remove account from user
  Future<void> removeAccount(AccountModel account) async {
    final user = await _getUser();
    user.accounts.remove(account);
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Update account from user
  Future<void> updateAccount(
    AccountModel account,
    AccountModel newAccount,
  ) async {
    final user = await _getUser();
    final index = user.accounts.indexOf(account);
    user.accounts[index] = newAccount;
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  double getTotalIncomesByAccount({
    required AccountModel account,
    required DateTime date,
  }) {
    var income = 0.0;
    for (final transaction in account.transactions) {
      if (transaction.category.isIncome &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        income += transaction.amount;
      }
    }
    return income;
  }

  double getTotalExpensesByAccount({
    required AccountModel account,
    required DateTime date,
  }) {
    var expenses = 0.0;
    for (final transaction in account.transactions) {
      if (!transaction.category.isIncome &&
          transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        expenses += transaction.amount;
      }
    }
    return expenses;
  }

  double getBalanceOfAccount({
    required AccountModel account,
    required DateTime date,
  }) {
    var balance = 0.0;
    for (final transaction in account.transactions) {
      if (transaction.date.month <= date.month &&
          transaction.date.year <= date.year) {
        if (transaction.category.isIncome) {
          balance += transaction.amount;
        } else {
          balance -= transaction.amount;
        }
      }
    }
    return balance;
  }
}

// Create account instances
final AccountModel cash = AccountModel(
  id: 0,
  name: 'Efectivo',
  institution: wallet,
);

final AccountModel hsbc = AccountModel(
  id: 1,
  name: 'HSBC',
  institution: hsbcInstitution,
);

final AccountModel galicia = AccountModel(
  id: 2,
  name: 'Galicia',
  institution: galiciaInstitution,
);

final AccountModel naranjaX = AccountModel(
  id: 3,
  name: 'Naranja X',
  institution: bbvaInstitution,
);

final AccountModel bbva = AccountModel(
  id: 4,
  name: 'BBVA',
  institution: bbvaInstitution,
);

final AccountModel mercadoPago = AccountModel(
  id: 5,
  name: 'Mercado Pago',
  institution: mercadoPagoInstitution,
);

final AccountModel prex = AccountModel(
  id: 6,
  name: 'Prex',
  institution: prexInstitution,
);

final AccountModel savingsAccount = AccountModel(
  id: 7,
  name: 'Ahorros',
  institution: savingsInstitution,
);

final AccountModel pago24 = AccountModel(
  id: 8,
  name: 'Pago24',
  institution: pago24Institution,
);

final AccountModel pedidosYa = AccountModel(
  id: 9,
  name: 'PedidosYa',
  institution: pago24Institution,
);

final AccountModel nubiz = AccountModel(
  id: 10,
  name: 'Nubiz',
  institution: pago24Institution,
);
