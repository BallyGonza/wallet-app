import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/credit_card/credit_card_event.dart';
import 'package:wallet_app/blocs/credit_card/credit_card_state.dart';
import 'package:wallet_app/data/data.dart';

class CreditCardBloc extends Bloc<CreditCardEvent, CreditCardState> {
  CreditCardBloc({required this.creditCardRepository})
      : super(const CreditCardState.initial()) {
    on<CreditCardInitialEvent>(_onInit);
    on<CreditCardAddEvent>(_onAdd);
    on<CreditCardRemoveEvent>(_onRemove);
    on<CreditCardAddTransactionEvent>(_onAddTransaction);
    on<CreditCardRemoveTransactionEvent>(_onRemoveTransaction);
    on<CreditCardUpdateEvent>(_onUpdate);
    on<CreditCardPayEvent>(_onPay);

    add(const CreditCardEvent.init());
  }

  final CreditCardRepository creditCardRepository;

  late List<CreditCardModel> creditCards;

  Future<void> _onInit(
    CreditCardInitialEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    try {
      creditCards = await creditCardRepository.getCreditCards();
      emit(CreditCardState.loaded(creditCards));
    } catch (e) {
      emit(CreditCardState.error(e.toString()));
    }
  }

  Future<void> _onAdd(
    CreditCardAddEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    try {
      await creditCardRepository.addCreditCard(event.creditCard);
      creditCards = await creditCardRepository.getCreditCards();
      emit(CreditCardState.loaded(creditCards));
    } catch (e) {
      emit(CreditCardState.error(e.toString()));
    }
  }

  Future<void> _onRemove(
    CreditCardRemoveEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    try {
      await creditCardRepository.removeCreditCard(event.creditCard);
      creditCards = await creditCardRepository.getCreditCards();
      emit(CreditCardState.loaded(creditCards));
    } catch (e) {
      emit(CreditCardState.error(e.toString()));
    }
  }

  Future<void> _onUpdate(
    CreditCardUpdateEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    try {
      await creditCardRepository.updateCreditCard(event.creditCard);
      creditCards = await creditCardRepository.getCreditCards();
      emit(CreditCardState.loaded(creditCards));
    } catch (e) {
      emit(CreditCardState.error(e.toString()));
    }
  }

  Future<void> _onAddTransaction(
    CreditCardAddTransactionEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    try {
      await creditCardRepository.addTransaction(
        event.creditCard,
        event.creditCardTransaction,
      );
      creditCards = await creditCardRepository.getCreditCards();
      emit(CreditCardState.loaded(creditCards));
    } catch (e) {
      emit(CreditCardState.error(e.toString()));
    }
  }

  Future<void> _onRemoveTransaction(
    CreditCardRemoveTransactionEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    try {
      await creditCardRepository.removeTransaction(
        event.creditCard,
        event.creditCardTransaction,
      );
      creditCards = await creditCardRepository.getCreditCards();
      emit(CreditCardState.loaded(creditCards));
    } catch (e) {
      emit(CreditCardState.error(e.toString()));
    }
  }

  Future<void> _onPay(
    CreditCardPayEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    try {
      await creditCardRepository.pay(event.creditCard, event.date);
      creditCards = await creditCardRepository.getCreditCards();
      emit(CreditCardState.loaded(creditCards));
    } catch (e) {
      emit(CreditCardState.error(e.toString()));
    }
  }
}
