import 'package:all_build_companies/routes/mobile_app_router.dart';
import 'package:all_build_companies/server/service_locator.dart' as di;
import 'package:all_build_companies/theme/app_theme.dart';
import 'package:all_build_companies/widgets/app_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = MobileAppRouter();

void main() async {
  await di.init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: AppScrollBehavior(),
      scaffoldMessengerKey: scaffoldKey,
      theme: lightTheme,
      title: 'All build companies',
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      routeInformationProvider: appRouter.routeInfoProvider(),
    );
  }
}
