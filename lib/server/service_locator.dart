import 'package:all_build_companies/routes/mobile_app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  ///other services
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  sl.registerSingleton<MobileAppRouter>(MobileAppRouter());

  /// Repository

  /// UseCases

  /// BLoCs / Cubits
}
