import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_expense_event.freezed.dart';

@freezed
class CreditCardExpenseEvent with _$CreditCardExpenseEvent {
  const factory CreditCardExpenseEvent.init(
    CreditCardModel creditCard,
  ) = CreditCardExpenseInitialEvent;
  const factory CreditCardExpenseEvent.add(
    CreditCardTransactionModel creditCardExpense,
  ) = CreditCardExpenseAddEvent;
  const factory CreditCardExpenseEvent.remove(
    CreditCardTransactionModel creditCardExpense,
  ) = CreditCardExpenseRemoveEvent;
}
