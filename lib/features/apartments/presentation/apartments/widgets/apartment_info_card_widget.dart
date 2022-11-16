import 'package:all_build_companies/features/apartments/data/models/apartment_model.dart';
import 'package:all_build_companies/theme/app_colors.dart';
import 'package:all_build_companies/theme/app_text_styles.dart';
import 'package:all_build_companies/widgets/spaces.dart';
import 'package:flutter/material.dart';

class ApartmentInfoCardWidget extends StatelessWidget {
  const ApartmentInfoCardWidget({Key? key, required this.model})
      : super(key: key);
  final ApartmentModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 150,
      width: getWidth(context),
      decoration: BoxDecoration(
        color: AppColors.colorB4BF19,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(model.image, height: 50),
                Text(
                  model.companyName,
                  style: AppTextStyles.s20Wbold(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Количество комнат:'),
                Text(
                  model.numberOfRooms,
                  style: AppTextStyles.s16W500(),
                ),
                const SizedBox(height: 10),
                const Text('Цена:'),
                Text(
                  model.price,
                  style: AppTextStyles.s16W500(),
                ),
                const SizedBox(height: 10),
                const Text('Первый взнос:'),
                Text(
                  model.firstPaymant,
                  style: AppTextStyles.s16W500(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
