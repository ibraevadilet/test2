import 'package:all_build_companies/core/images/app_images.dart';
import 'package:all_build_companies/features/apartments/data/models/apartment_model.dart';
import 'package:all_build_companies/features/apartments/presentation/apartments/widgets/apartment_info_card_widget.dart';
import 'package:all_build_companies/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ApartmentsScreen extends StatelessWidget {
  const ApartmentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Квартиры',
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sort,
              color: AppColors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          itemBuilder: (context, index) => ApartmentInfoCardWidget(
            model: ApartmentModel(
              numberOfRooms: '2',
              image: AppImages.aparmentImage,
              price: '32 000 \$',
              companyName: 'Elite House',
              firstPaymant: '12 000 \$',
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: 10,
        ),
      ),
    );
  }
}
