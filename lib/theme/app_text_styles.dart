import 'package:all_build_companies/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';

abstract class AppTextStyles {
  static s20Wbold({Color? color}) => TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.black,
      );
  static s16W500({Color? color}) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color ?? AppColors.black,
      );
}
