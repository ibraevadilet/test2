import 'package:all_build_companies/core/images/app_images.dart';
import 'package:all_build_companies/features/splash/splash_cubit/splash_cubit.dart';
import 'package:all_build_companies/routes/mobile_app_router.dart';
import 'package:all_build_companies/theme/app_colors.dart';
import 'package:all_build_companies/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) => SplashCubit(),
        child: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {
            state.whenOrNull(
              initial: () => context.router.pushAndPopUntil(
                const BottomNavigatorRoute(),
                predicate: (route) => false,
              ),
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppImages.logo,
                      height: 200,
                      color: AppColors.colorFF0000,
                    ),
                    const SizedBox(height: 50),
                    Text(
                      'Все строительные компании\nКыргызстана',
                      style:
                          AppTextStyles.s20Wbold(color: AppColors.colorFF0000),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
