import 'package:all_build_companies/features/companies/data/models/comany_model.dart';
import 'package:all_build_companies/theme/app_colors.dart';
import 'package:all_build_companies/theme/app_text_styles.dart';
import 'package:all_build_companies/widgets/spaces.dart';
import 'package:flutter/material.dart';

class CompanyInfoCard extends StatelessWidget {
  const CompanyInfoCard({Key? key, required this.model}) : super(key: key);
  final CompanyModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 150,
      width: getWidth(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.colorB4BF19,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(model.image, height: 50),
                Text(
                  model.name,
                  style: AppTextStyles.s20Wbold(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Дата основания:',
                ),
                Text(model.dateFoundation, style: AppTextStyles.s16W500()),
                const SizedBox(height: 15),
                const Text(
                  'Реализовано проектов:',
                ),
                Text(model.buildings.toString(),
                    style: AppTextStyles.s16W500()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
