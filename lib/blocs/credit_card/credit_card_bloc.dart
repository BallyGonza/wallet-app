import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';

import 'credit_card_event.dart';
import 'credit_card_state.dart';

class CreditCardBloc extends Bloc<CreditCardEvent, CreditCardState> {
  CreditCardBloc() : super(const CreditCardState.initial()) {
    on<CreditCardInitialEvent>(_onInit);
    on<CreditCardAddEvent>(_onAdd);
    on<CreditCardRemoveEvent>(_onRemove);

    add(const CreditCardEvent.init());
  }

  final UserRepository userRepository = UserRepository();

  late UserModel user;
  late List<CreditCardModel> creditCards;

  Future<void> _onInit(
    CreditCardInitialEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    user = await userRepository.getUser();
    creditCards = user.creditCards;
    emit(CreditCardState.loaded(creditCards));
  }

  Future<void> _onAdd(
    CreditCardAddEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    creditCards.add(event.creditCard);
    await userRepository.saveUser(user);
    emit(CreditCardState.loaded(creditCards));
  }

  Future<void> _onRemove(
    CreditCardRemoveEvent event,
    Emitter<CreditCardState> emit,
  ) async {
    emit(const CreditCardState.loading());
    creditCards.removeWhere((element) => element.id == event.creditCard.id);
    await userRepository.saveUser(user);
    emit(CreditCardState.loaded(creditCards));
  }
}
