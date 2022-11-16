// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../features/apartments/presentation/apartments/screen/apartments_screen.dart'
    as _i5;
import '../features/companies/presentation/companies/screen/companies_screen.dart'
    as _i4;
import '../features/map/presentation/screen/map_screen.dart' as _i6;
import '../features/profile/presentation/screen/profile_screen.dart' as _i7;
import '../features/splash/splash_screen.dart' as _i1;
import '../widgets/bottom_navigator.dart' as _i2;
import 'mobile_app_router.dart' as _i3;

class MobileAppRouter extends _i8.RootStackRouter {
  MobileAppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavigator(),
      );
    },
    CompaniesScreenNavigator.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ApartmentsScreenNavigator.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    MapScreenNavigator.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ProfileScreenNavigator.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    CompaniesScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CompaniesScreen(),
      );
    },
    ApartmentsScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ApartmentsScreen(),
      );
    },
    MapScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.MapScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          BottomNavigatorRoute.name,
          path: '/navigator',
          children: [
            _i8.RouteConfig(
              CompaniesScreenNavigator.name,
              path: 'companies',
              parent: BottomNavigatorRoute.name,
              children: [
                _i8.RouteConfig(
                  CompaniesScreenRoute.name,
                  path: '',
                  parent: CompaniesScreenNavigator.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: CompaniesScreenNavigator.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i8.RouteConfig(
              ApartmentsScreenNavigator.name,
              path: 'apartments',
              parent: BottomNavigatorRoute.name,
              children: [
                _i8.RouteConfig(
                  ApartmentsScreenRoute.name,
                  path: '',
                  parent: ApartmentsScreenNavigator.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ApartmentsScreenNavigator.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i8.RouteConfig(
              MapScreenNavigator.name,
              path: 'map',
              parent: BottomNavigatorRoute.name,
              children: [
                _i8.RouteConfig(
                  MapScreenRoute.name,
                  path: '',
                  parent: MapScreenNavigator.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: MapScreenNavigator.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i8.RouteConfig(
              ProfileScreenNavigator.name,
              path: 'profile',
              parent: BottomNavigatorRoute.name,
              children: [
                _i8.RouteConfig(
                  ProfileScreenRoute.name,
                  path: '',
                  parent: ProfileScreenNavigator.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ProfileScreenNavigator.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i8.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.BottomNavigator]
class BottomNavigatorRoute extends _i8.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          path: '/navigator',
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class CompaniesScreenNavigator extends _i8.PageRouteInfo<void> {
  const CompaniesScreenNavigator({List<_i8.PageRouteInfo>? children})
      : super(
          CompaniesScreenNavigator.name,
          path: 'companies',
          initialChildren: children,
        );

  static const String name = 'CompaniesScreenNavigator';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ApartmentsScreenNavigator extends _i8.PageRouteInfo<void> {
  const ApartmentsScreenNavigator({List<_i8.PageRouteInfo>? children})
      : super(
          ApartmentsScreenNavigator.name,
          path: 'apartments',
          initialChildren: children,
        );

  static const String name = 'ApartmentsScreenNavigator';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class MapScreenNavigator extends _i8.PageRouteInfo<void> {
  const MapScreenNavigator({List<_i8.PageRouteInfo>? children})
      : super(
          MapScreenNavigator.name,
          path: 'map',
          initialChildren: children,
        );

  static const String name = 'MapScreenNavigator';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProfileScreenNavigator extends _i8.PageRouteInfo<void> {
  const ProfileScreenNavigator({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileScreenNavigator.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileScreenNavigator';
}

/// generated route for
/// [_i4.CompaniesScreen]
class CompaniesScreenRoute extends _i8.PageRouteInfo<void> {
  const CompaniesScreenRoute()
      : super(
          CompaniesScreenRoute.name,
          path: '',
        );

  static const String name = 'CompaniesScreenRoute';
}

/// generated route for
/// [_i5.ApartmentsScreen]
class ApartmentsScreenRoute extends _i8.PageRouteInfo<void> {
  const ApartmentsScreenRoute()
      : super(
          ApartmentsScreenRoute.name,
          path: '',
        );

  static const String name = 'ApartmentsScreenRoute';
}

/// generated route for
/// [_i6.MapScreen]
class MapScreenRoute extends _i8.PageRouteInfo<void> {
  const MapScreenRoute()
      : super(
          MapScreenRoute.name,
          path: '',
        );

  static const String name = 'MapScreenRoute';
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileScreenRoute extends _i8.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'ProfileScreenRoute';
}
