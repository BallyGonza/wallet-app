import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

/// [UserBloc] is responsible for managing user related states.
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.userRepository}) : super(const UserState.initial()) {
    on<UserInitialEvent>(_onInit);
    add(const UserEvent.init());
  }
  final UserRepository userRepository;
  late UserModel user;

  /// Fetches user data and updates categories when [UserInitialEvent] is added.
  Future<void> _onInit(UserInitialEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    try {
      user = await userRepository.getUser();
      await userRepository.updateCategories(user);
      emit(UserState.loaded(user));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }
}
