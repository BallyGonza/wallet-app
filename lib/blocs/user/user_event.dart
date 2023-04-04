import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.init() = UserInitialEvent;
  const factory UserEvent.addTransaction(
    UserModel user,
    TransactionModel transaction,
  ) = UserAddTransactionEvent;
  const factory UserEvent.updateTransaction(
    UserModel user,
    TransactionModel transaction,
    int index,
  ) = UserUpdateTransactionEvent;
  const factory UserEvent.removeTransaction(
    UserModel user,
    TransactionModel transaction,
  ) = UserRemoveTransactionEvent;
  const factory UserEvent.addAccount(
    UserModel user,
    AccountModel account,
  ) = UserAddAccountEvent;
  const factory UserEvent.updateAccount(
    UserModel user,
    AccountModel account,
    int index,
  ) = UserUpdateAccountEvent;
  const factory UserEvent.removeAccount(
    UserModel user,
    AccountModel account,
  ) = UserRemoveAccountEvent;

  const factory UserEvent.addCategory(
    UserModel user,
    CategoryModel category,
  ) = UserAddCategoryEvent;
  const factory UserEvent.updateCategory(
    UserModel user,
    CategoryModel category,
    int index,
  ) = UserUpdateCategoryEvent;
  const factory UserEvent.removeCategory(
    UserModel user,
    CategoryModel category,
  ) = UserRemoveCategoryEvent;
}
