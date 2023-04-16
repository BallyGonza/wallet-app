import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/theme.dart';

import 'blocs/blocs.dart';
import 'data/data.dart';
import 'views/views.dart';

Future<void> main() async {
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(InstitutionModelAdapter());
  Hive.registerAdapter(AccountModelAdapter());
  Hive.registerAdapter(TransactionModelAdapter());
  Hive.registerAdapter(CategoryModelAdapter());
  Hive.registerAdapter(CreditCardModelAdapter());
  Hive.registerAdapter(CreditCardTransactionModelAdapter());

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox<UserModel>('users_box');

  runApp(
    BlocProvider(
      create: (context) => UserBloc(),
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
                return HomeScreen(user: user);
              });
        },
      ),
    );
  }
}
