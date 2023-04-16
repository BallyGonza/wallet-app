import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';

import 'credit_card_expense_event.dart';
import 'credit_card_expense_state.dart';

class CreditCardExpenseBloc
    extends Bloc<CreditCardExpenseEvent, CreditCardExpenseState> {
  CreditCardExpenseBloc() : super(const CreditCardExpenseState.initial()) {
    on<CreditCardExpenseInitialEvent>(_onInit);
    on<CreditCardExpenseAddEvent>(_onAdd);
    on<CreditCardExpenseRemoveEvent>(_onRemove);
  }

  final UserRepository userRepository = UserRepository();
  final CreditCardRepository creditCardRepository = CreditCardRepository();

  late UserModel user;
  late List<CreditCardTransactionModel> creditCardExpenses;

  Future<void> _onInit(
    CreditCardExpenseInitialEvent event,
    Emitter<CreditCardExpenseState> emit,
  ) async {
    emit(const CreditCardExpenseState.loading());
    user = await userRepository.getUser();
    creditCardExpenses = event.creditCard.expenses;
    emit(CreditCardExpenseState.loaded(creditCardExpenses));
  }

  Future<void> _onAdd(
    CreditCardExpenseAddEvent event,
    Emitter<CreditCardExpenseState> emit,
  ) async {
    emit(const CreditCardExpenseState.loading());
    creditCardExpenses.add(event.creditCardExpense);
    await userRepository.saveUser(user);
    emit(CreditCardExpenseState.loaded(creditCardExpenses));
  }

  Future<void> _onRemove(
    CreditCardExpenseRemoveEvent event,
    Emitter<CreditCardExpenseState> emit,
  ) async {
    emit(const CreditCardExpenseState.loading());
    creditCardExpenses
        .removeWhere((element) => element.id == event.creditCardExpense.id);
    await userRepository.saveUser(user);
    emit(CreditCardExpenseState.loaded(creditCardExpenses));
  }
}
