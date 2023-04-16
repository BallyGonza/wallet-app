import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/theme.dart';

import 'blocs/blocs.dart';
import 'data/data.dart';
import 'views/views.dart';

Future<void> main() async {
  Hive.registerAdapter(AccountModelAdapter());
  Hive.registerAdapter(CategoryModelAdapter());
  Hive.registerAdapter(CreditCardModelAdapter());
  Hive.registerAdapter(CreditCardTransactionModelAdapter());
  Hive.registerAdapter(InstitutionModelAdapter());
  Hive.registerAdapter(TransactionModelAdapter());
  Hive.registerAdapter(UserModelAdapter());

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox<UserModel>('users_box');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => AccountBloc(),
        ),
        BlocProvider(
          create: (context) => TransactionBloc(),
        ),
        BlocProvider(
          create: (context) => CreditCardBloc(),
        ),
        BlocProvider(
          create: (context) => CreditCardExpenseBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: walletAppTheme,
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              loaded: (user) {
                return HomeScreen(
                  user: user,
                );
              });
        },
      ),
    );
  }
}
