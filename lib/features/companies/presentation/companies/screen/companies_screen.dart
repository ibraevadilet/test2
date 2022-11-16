import 'package:all_build_companies/core/images/app_images.dart';
import 'package:all_build_companies/features/companies/data/models/comany_model.dart';
import 'package:all_build_companies/features/companies/presentation/companies/widgets/compani_info_card.dart';
import 'package:all_build_companies/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Строительные компании',
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          itemBuilder: (context, index) => CompanyInfoCard(
            model: CompanyModel(
              image: AppImages.elitHouselogo,
              name: 'Elite House',
              dateFoundation: '2013 год',
              buildings: 5,
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: 10,
        ),
      ),
    );
  }
}
