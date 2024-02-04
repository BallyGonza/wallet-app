import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/data/data.dart';

class HiveService {
  static Future<void> initializeHive() async {
    try {
      Hive
        ..registerAdapter(AccountModelAdapter())
        ..registerAdapter(CategoryModelAdapter())
        ..registerAdapter(CreditCardModelAdapter())
        ..registerAdapter(CreditCardTransactionModelAdapter())
        ..registerAdapter(InstitutionModelAdapter())
        ..registerAdapter(TransactionModelAdapter())
        ..registerAdapter(UserModelAdapter());
      WidgetsFlutterBinding.ensureInitialized();

      await Hive.initFlutter();
      await Hive.openBox<UserModel>('users_box');
    } catch (e) {
      if (kDebugMode) {
        print('Error initializing Hive: $e');
      }
    }
  }
}
