import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/theme.dart';
import 'package:wallet_app/views/views.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const argentina = NumberSymbols(
    NAME: 'es_AR',
    DECIMAL_SEP: ',',
    GROUP_SEP: '.',
    PERCENT: '%',
    ZERO_DIGIT: '0',
    PLUS_SIGN: '+',
    MINUS_SIGN: '-',
    EXP_SYMBOL: 'E',
    PERMILL: '\u2030',
    INFINITY: '\u221E',
    NAN: 'NaN',
    DECIMAL_PATTERN: '#,##0.###',
    SCIENTIFIC_PATTERN: '#E0',
    PERCENT_PATTERN: '#,##0\u00A0%',
    CURRENCY_PATTERN: '\u00A4#,##0.00\u00A0',
    DEF_CURRENCY_CODE: r'$',
  );

  numberFormatSymbols['es_AR'] = argentina;

  Hive
    ..registerAdapter(AccountModelAdapter())
    ..registerAdapter(CategoryModelAdapter())
    ..registerAdapter(CreditCardModelAdapter())
    ..registerAdapter(CreditCardTransactionModelAdapter())
    ..registerAdapter(InstitutionModelAdapter())
    ..registerAdapter(TransactionModelAdapter())
    ..registerAdapter(UserModelAdapter());

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
          create: (context) => CreditCardBloc(),
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
              return AnnotatedRegion<SystemUiOverlayStyle>(
                value: const SystemUiOverlayStyle(
                  systemNavigationBarColor: Colors.transparent,
                ),
                child: HomeScreen(
                  user: user,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
