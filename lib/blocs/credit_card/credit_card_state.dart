import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_state.freezed.dart';

@freezed
class CreditCardState with _$CreditCardState {
  const factory CreditCardState.initial() = CreditCardInitial;
  const factory CreditCardState.loading() = CreditCardLoading;
  const factory CreditCardState.loaded(
    List<CreditCardModel> creditCards,
  ) = CreditCardUpdated;
}
