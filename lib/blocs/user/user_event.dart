import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.init() = UserInitialEvent;
  const factory UserEvent.addTransaction(
    TransactionModel transaction,
  ) = UserAddTransactionEvent;
  const factory UserEvent.updateTransaction(
    TransactionModel transaction,
  ) = UserUpdateTransactionEvent;
  const factory UserEvent.removeTransaction(
    TransactionModel transaction,
  ) = UserRemoveTransactionEvent;
  const factory UserEvent.addAccount(
    AccountModel account,
  ) = UserAddAccountEvent;
  const factory UserEvent.removeAllTransactions() =
      UserRemoveAllTransactionsEvent;
  const factory UserEvent.updateAccount(
    AccountModel account,
  ) = UserUpdateAccountEvent;
  const factory UserEvent.removeAccount(
    AccountModel account,
  ) = UserRemoveAccountEvent;

  const factory UserEvent.addCreditCard(
    CreditCardModel creditCard,
  ) = UserAddCreditCardEvent;
  const factory UserEvent.removeCreditCard(
    CreditCardModel creditCard,
  ) = UserRemoveCreditCardEvent;

  const factory UserEvent.addCreditCardExpense(
    CreditCardTransactionModel creditCardExpense,
  ) = UserAddCreditCardExpenseEvent;
  const factory UserEvent.removeCreditCardExpense(
    CreditCardTransactionModel creditCardExpense,
  ) = UserRemoveCreditCardExpenseEvent;
  const factory UserEvent.payCreditCard(
    List<CreditCardTransactionModel> creditCardExpenses,
    DateTime date,
  ) = UserPayCreditCardEvent;

  const factory UserEvent.addCategory(
    CategoryModel category,
  ) = UserAddCategoryEvent;
  const factory UserEvent.updateCategory(
    CategoryModel category,
  ) = UserUpdateCategoryEvent;
  const factory UserEvent.removeCategory(
    CategoryModel category,
  ) = UserRemoveCategoryEvent;
}
