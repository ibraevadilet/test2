
import 'package:all_build_companies/features/companies/presentation/companies/screen/companies_screen.dart';
import 'package:all_build_companies/features/map/presentation/screen/map_screen.dart';
import 'package:all_build_companies/features/profile/presentation/screen/profile_screen.dart';
import 'package:all_build_companies/features/apartments/presentation/apartments/screen/apartments_screen.dart';
import 'package:all_build_companies/features/splash/splash_screen.dart';
import 'package:all_build_companies/widgets/bottom_navigator.dart';
import 'package:auto_route/auto_route.dart';

export 'package:auto_route/auto_route.dart';

export 'mobile_app_router.gr.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: SplashScreen,
      initial: true,
      path: '/',
    ),
    AdaptiveRoute(
      page: BottomNavigator,
      path: '/navigator',
      children: [
        AutoRoute(
          path: 'companies',
          page: EmptyRouterPage,
          name: 'CompaniesScreenNavigator',
          children: [
            AutoRoute(
              path: '',
              page: CompaniesScreen,
            ),
            RedirectRoute(
              path: '*',
              redirectTo: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'apartments',
          page: EmptyRouterPage,
          name: 'ApartmentsScreenNavigator',
          children: [
            AutoRoute(
              path: '',
              page: ApartmentsScreen,
            ),
            RedirectRoute(
              path: '*',
              redirectTo: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'map',
          page: EmptyRouterPage,
          name: 'MapScreenNavigator',
          children: [
            AutoRoute(
              path: '',
              page: MapScreen,
            ),
            RedirectRoute(
              path: '*',
              redirectTo: '',
            ),
          ],
        ),
        AutoRoute(
          path: 'profile',
          page: EmptyRouterPage,
          name: 'ProfileScreenNavigator',
          children: [
            AutoRoute(
              path: '',
              page: ProfileScreen,
            ),
            RedirectRoute(
              path: '*',
              redirectTo: '',
            ),
          ],
        ),
      ],
    ),
  ],
)
class $MobileAppRouter {}
