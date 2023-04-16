import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';

import 'credit_card_event.dart';
import 'credit_card_state.dart';

class CreditCardBloc extends Bloc<CreditCardEvent, CreditCardState> {
  CreditCardBloc() : super(const CreditCardState.initial()) {
    on<CreditCardInitialEvent>(_onInit);
    on<CreditCardAddEvent>(_onAdd);
    on<CreditCardRemoveEvent>(_onRemove);
    on<CreditCardAddTransactionEvent>(_onAddTransaction);
    on<CreditCardRemoveTransactionEvent>(_onRemoveTransaction);

    add(const CreditCardEvent.init());
  }

  final CreditCardRepository creditCardRepository = CreditCardRepository();

  late UserModel user;
  late List<CreditCardModel> creditCards;

  Future<void> _onInit(
    CreditCardInitialEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    creditCards = await creditCardRepository.getCreditCards();
    emit(CreditCardState.loaded(creditCards));
  }

  Future<void> _onAdd(
    CreditCardAddEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    await creditCardRepository.addCreditCard(event.creditCard);
    creditCards = await creditCardRepository.getCreditCards();
    emit(CreditCardState.loaded(creditCards));
  }

  Future<void> _onRemove(
    CreditCardRemoveEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    await creditCardRepository.removeCreditCard(event.creditCard);
    creditCards = await creditCardRepository.getCreditCards();
    emit(CreditCardState.loaded(creditCards));
  }

  Future<void> _onAddTransaction(
    CreditCardAddTransactionEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    await creditCardRepository.addTransaction(
      event.creditCard,
      event.creditCardTransaction,
    );
    creditCards = await creditCardRepository.getCreditCards();
    emit(CreditCardState.loaded(creditCards));
  }

  Future<void> _onRemoveTransaction(
    CreditCardRemoveTransactionEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    await creditCardRepository.removeTransaction(
      event.creditCard,
      event.creditCardTransaction,
    );
    creditCards = await creditCardRepository.getCreditCards();
    emit(CreditCardState.loaded(creditCards));
  }
}
