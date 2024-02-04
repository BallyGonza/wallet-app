import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/data/data.dart';

part 'search_bar_state.freezed.dart';

@freezed
class SearchBarState with _$SearchBarState {
  const factory SearchBarState.initial() = SearchBarInitial;
  const factory SearchBarState.loading() = SearchBarLoading;
  const factory SearchBarState.loaded(List<TransactionModel> transactions) =
      SearchBarLoaded;
  const factory SearchBarState.error(String message) = SearchBarError;
}
