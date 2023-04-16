import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = TransactionInitial;
  const factory TransactionState.loading() = TransactionLoading;
  const factory TransactionState.loaded(
    List<TransactionModel> transactions,
  ) = TransactionUpdated;
}
