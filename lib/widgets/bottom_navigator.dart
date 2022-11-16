import 'package:all_build_companies/routes/mobile_app_router.dart';
import 'package:all_build_companies/theme/app_colors.dart';

import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: AppColors.backgroundColor,
      extendBody: true,
      routes: const [
        CompaniesScreenNavigator(),
        ApartmentsScreenNavigator(),
        MapScreenNavigator(),
        ProfileScreenNavigator(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.colorFF0000,
          selectedItemColor: AppColors.white,
          unselectedFontSize: 12,
          unselectedItemColor: AppColors.whiteWith70,
          unselectedIconTheme:
              const IconThemeData(color: AppColors.whiteWith70),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.apartment),
              label: 'Компании',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Квартиры',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: 'Карта',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}
