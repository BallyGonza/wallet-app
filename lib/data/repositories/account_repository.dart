import 'package:wallet_app/data/data.dart';

class AccountRepository {
  AccountRepository();
  UserModel? _cachedUser;

  final UserRepository _userRepository = UserRepository();

  // Get user
  Future<UserModel> _getUser() async {
    _cachedUser ??= await _userRepository.getUser();
    return _cachedUser!;
  }

  Future<List<AccountModel>> getAccounts() async {
    final user = await _getUser();
    return user.accounts;
  }

  // Add account to user
  Future<void> addAccount(AccountModel account) async {
    final user = await _getUser();
    user.accounts.add(account);
    await _saveUserAndClearCache(user);
  }

  // Remove account from user
  Future<void> removeAccount(AccountModel account) async {
    final user = await _getUser();
    user.accounts.remove(account);
    await _saveUserAndClearCache(user);
  }

  // Update account from user
  Future<void> updateAccount(
    AccountModel account,
    AccountModel newAccount,
  ) async {
    final user = await _getUser();
    final index = user.accounts.indexOf(account);
    if (index != -1) {
      user.accounts[index] = newAccount;
      await _saveUserAndClearCache(user);
    }
  }

  double getTotalIncomesByAccount({
    required AccountModel account,
    required DateTime date,
  }) {
    return _calculateTotalByAccount(
      account: account,
      date: date,
      isIncome: true,
    );
  }

  double getTotalExpensesByAccount({
    required AccountModel account,
    required DateTime date,
  }) {
    return _calculateTotalByAccount(
      account: account,
      date: date,
      isIncome: false,
    );
  }

  double getBalanceOfAccount({
    required AccountModel account,
    required DateTime date,
  }) {
    var balance = 0.0;
    for (final transaction in account.transactions) {
      if (_isTransactionBeforeOrOnDate(transaction, date)) {
        balance += transaction.category.isIncome
            ? transaction.amount
            : -transaction.amount;
      }
    }
    return balance;
  }

  // Save user and clear cache
  Future<void> _saveUserAndClearCache(UserModel user) async {
    await _userRepository.saveUser(user);
    _cachedUser = null;
  }

  // Helper method to calculate total income or expenses
  double _calculateTotalByAccount({
    required AccountModel account,
    required DateTime date,
    required bool isIncome,
  }) {
    var total = 0.0;
    for (final transaction in account.transactions) {
      if (transaction.category.isIncome == isIncome &&
          _isTransactionBeforeOrOnDate(transaction, date)) {
        total += transaction.amount;
      }
    }
    return total;
  }

  // Helper method to check if transaction date is before or on the given date
  bool _isTransactionBeforeOrOnDate(
    TransactionModel transaction,
    DateTime date,
  ) {
    return transaction.date.year < date.year ||
        (transaction.date.year == date.year &&
            transaction.date.month <= date.month);
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
  institution: personalPayInstitution,
);

final AccountModel pedidosYa = AccountModel(
  id: 9,
  name: 'PedidosYa',
  institution: pedidosYaInstitution,
);

final AccountModel nubiz = AccountModel(
  id: 10,
  name: 'Nubiz',
  institution: nubizInstitution,
);
