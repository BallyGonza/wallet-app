import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/theme.dart';
import 'package:wallet_app/views/views.dart';

const bool kDebugShowCheckedModeBanner = false;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: walletAppTheme,
      debugShowCheckedModeBanner: kDebugShowCheckedModeBanner,
      home: const HomeBuilder(),
    );
  }
}

class HomeBuilder extends StatelessWidget {
  const HomeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text(message)),
          loaded: _buildUserHomeScreen,
        );
      },
    );
  }

  Widget _buildUserHomeScreen(UserModel user) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
      ),
      child: HomeScreen(
        user: user,
      ),
    );
  }
}
