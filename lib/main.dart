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
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepository(),
        ),
        RepositoryProvider<AccountRepository>(
          create: (context) => AccountRepository(),
        ),
        RepositoryProvider<TransactionRepository>(
          create: (context) => TransactionRepository(),
        ),
        RepositoryProvider<CreditCardRepository>(
          create: (context) => CreditCardRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UserBloc(
              userRepository: context.read<UserRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AccountBloc(
              accountRepository: context.read<AccountRepository>(),
              transactionRepository: context.read<TransactionRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => CreditCardBloc(
              creditCardRepository: context.read<CreditCardRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => SearchBarBloc(
              transactionRepository: context.read<TransactionRepository>(),
            ),
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
