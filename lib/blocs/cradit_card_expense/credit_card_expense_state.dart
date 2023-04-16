import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_expense_state.freezed.dart';

@freezed
class CreditCardExpenseState with _$CreditCardExpenseState {
  const factory CreditCardExpenseState.initial() = CreditCardExpenseInitial;
  const factory CreditCardExpenseState.loading() = CreditCardExpenseLoading;
  const factory CreditCardExpenseState.loaded(
    List<CreditCardTransactionModel> creditCardExpenses,
  ) = CreditCardExpenseUpdated;
}
