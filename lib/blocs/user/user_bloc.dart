import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/user/user_event.dart';
import 'package:wallet_app/blocs/user/user_state.dart';
import 'package:wallet_app/data/data.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.initial()) {
    on<UserInitialEvent>(_onInit);

    add(const UserEvent.init());
  }

  final UserRepository userRepository = UserRepository();

  late UserModel user;
  late List<CreditCardTransactionModel> creditCardExpenses;

  Future<void> _onInit(
    UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    user = await userRepository.getUser();
    await userRepository.updateCategories(user);
    emit(UserState.loaded(user));
  }
}
