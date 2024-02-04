import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bar_event.freezed.dart';

@freezed
class SearchBarEvent with _$SearchBarEvent {
  const factory SearchBarEvent.init() = SearchBarInitialEvent;
  const factory SearchBarEvent.search(String name) = SearchBarSearchEvent;
}
