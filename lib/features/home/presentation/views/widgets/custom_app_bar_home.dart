import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        const Text('Books',style: AppStyles.bold24,),
        SizedBox(height: 5,),
        Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(
              color:  AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
      ],
    );
  }
}