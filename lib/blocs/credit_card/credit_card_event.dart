import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_event.freezed.dart';

@freezed
class CreditCardEvent with _$CreditCardEvent {
  const factory CreditCardEvent.init() = CreditCardInitialEvent;
  const factory CreditCardEvent.add(
    CreditCardModel creditCard,
  ) = CreditCardAddEvent;
  const factory CreditCardEvent.remove(
    CreditCardModel creditCard,
  ) = CreditCardRemoveEvent;
  const factory CreditCardEvent.addTransaction(
    CreditCardModel creditCard,
    CreditCardTransactionModel creditCardTransaction,
  ) = CreditCardAddTransactionEvent;
  const factory CreditCardEvent.removeTransaction(
    CreditCardModel creditCard,
    CreditCardTransactionModel creditCardTransaction,
  ) = CreditCardRemoveTransactionEvent;
}
