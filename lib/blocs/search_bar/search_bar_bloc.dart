import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

/// [SearchBarBloc] is responsible for managing user related states.
class SearchBarBloc extends Bloc<SearchBarEvent, SearchBarState> {
  SearchBarBloc({required this.accountRepository})
      : super(const SearchBarState.initial()) {
    on<SearchBarInitialEvent>(_onInit);
    on<SearchBarSearchEvent>(_onSearch);
    add(const SearchBarEvent.init());
  }
  final AccountRepository accountRepository;
  late List<TransactionModel> transactions;
  List<TransactionModel> filteredTransactions = [];

  /// Fetches user data and updates categories when [SearchBarInitialEvent]
  /// is  added.
  Future<void> _onInit(
    SearchBarInitialEvent event,
    Emitter<SearchBarState> emit,
  ) async {
    emit(const SearchBarState.loading());
    try {
      transactions = await accountRepository.getAllTransactions();
      emit(SearchBarState.loaded(transactions));
    } catch (e) {
      emit(SearchBarState.error(e.toString()));
    }
  }

  /// Filters transactions based on the search query when [SearchBarSearchEvent]
  /// is added.

  Future<void> _onSearch(
    SearchBarSearchEvent event,
    Emitter<SearchBarState> emit,
  ) async {
    emit(const SearchBarState.loading());
    try {
      filteredTransactions = accountRepository.filterTransactionsByName(
        transactions: transactions,
        name: event.name,
      );
      emit(SearchBarState.loaded(filteredTransactions));
    } catch (e) {
      emit(SearchBarState.error(e.toString()));
    }
  }
}
