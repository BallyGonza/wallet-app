import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/services/services.dart';
import 'package:wallet_app/views/views.dart';

Future<void> main() async {
  await HiveService.initializeHive();
  LocalizationService().setupLocalization();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(userRepository: UserRepository()),
        ),
        BlocProvider(
          create: (context) =>
              AccountBloc(accountRepository: AccountRepository()),
        ),
        BlocProvider(
          create: (context) =>
              CreditCardBloc(creditCardRepository: CreditCardRepository()),
        ),
        BlocProvider(
          create: (context) =>
              SearchBarBloc(accountRepository: AccountRepository()),
        ),
      ],
      child: const App(),
    ),
  );
}
