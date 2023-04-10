import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(
    this.usersRepository,
  ) : super(const UserState.initial()) {
    on<UserInitialEvent>(_onInit);

    on<UserAddAccountEvent>(_onAddAccount);
    on<UserUpdateAccountEvent>(_onUpdateAccount);
    on<UserRemoveAccountEvent>(_onRemoveAccount);

    on<UserAddTransactionEvent>(_onAddTransaction);
    on<UserUpdateTransactionEvent>(_onUpdateTransaction);
    on<UserRemoveTransactionEvent>(_onRemoveTransaction);
    on<UserRemoveAllTransactionsEvent>(_onRemoveAllTransactions);

    // on<UserAddCategoryEvent>(_onAddCategory);
    // on<UserUpdateCategoryEvent>(_onUpdateCategory);
    // on<UserRemoveCategoryEvent>(_onRemoveCategory);

    add(const UserEvent.init());
  }

  final UserRepository usersRepository;
  late UserModel defaultUser;
  late UserModel user;
  List<TransactionModel> transactions = [];
  List<AccountModel> accounts = [];

  final Box<UserModel> box = Hive.box<UserModel>('users_box');

  void _onInit(
    UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {
    defaultUser = await usersRepository.getUser();
    if (!box.containsKey(defaultUser.id)) {
      await box.put(defaultUser.id, defaultUser);
    }
    user = box.get(defaultUser.id)!;
    transactions.addAll(user.transactions);
    accounts.addAll(user.accounts);
    // order transactions by date, soonest first
    transactions.sort((a, b) => a.date.compareTo(b.date));
    emit(UserState.updated(user));
  }

  // Account

  void _onAddAccount(
    UserAddAccountEvent event,
    Emitter<UserState> emit,
  ) async {
    accounts.add(event.account);
    user.accounts = accounts;
    await box.put(user.id, user);
    emit(UserState.updated(user));
  }

  void _onUpdateAccount(
    UserUpdateAccountEvent event,
    Emitter<UserState> emit,
  ) {
    user.accounts[event.account.id] = event.account;
    emit(UserState.updated(user));
  }

  void _onRemoveAccount(
    UserRemoveAccountEvent event,
    Emitter<UserState> emit,
  ) async {
    accounts.removeWhere((element) => element.id == event.account.id);
    user.accounts = accounts;
    await box.put(user.id, user);
    emit(UserState.updated(user));
  }

  // Transaction

  Future<void> _onAddTransaction(
    UserAddTransactionEvent event,
    Emitter<UserState> emit,
  ) async {
    transactions.add(event.transaction);
    transactions.sort((a, b) => a.date.compareTo(b.date));

    user.transactions = transactions;
    await box.put(user.id, user);

    emit(UserState.updated(user));
  }

  void _onUpdateTransaction(
    UserUpdateTransactionEvent event,
    Emitter<UserState> emit,
  ) async {
    transactions.firstWhere((element) => element.id == event.transaction.id)
      ..amount = event.transaction.amount
      ..date = event.transaction.date
      ..note = event.transaction.note
      ..account = event.transaction.account
      ..category = event.transaction.category;

    user.transactions = transactions;
    await box.put(user.id, user);
    emit(UserState.updated(user));
  }

  void _onRemoveTransaction(
    UserRemoveTransactionEvent event,
    Emitter<UserState> emit,
  ) async {
    transactions.removeWhere((element) => element.id == event.transaction.id);
    transactions.sort((a, b) => a.date.compareTo(b.date));

    user.transactions = transactions;
    await box.put(user.id, user);
    emit(UserState.updated(user));
  }

  void _onRemoveAllTransactions(
    UserRemoveAllTransactionsEvent event,
    Emitter<UserState> emit,
  ) async {
    transactions.clear();
    await box.put(user.id, user);
    emit(UserState.updated(user));
  }

  // Category

  //  ----------------------------

  UserState? fromJson(Map<String, dynamic> json) {
    return UserState.fromJson(json);
  }

  Map<String, dynamic>? toJson(UserState state) {
    return state.toJson();
  }
}
