import 'package:books_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle bold24 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: AppColors.primaryColor
  );

  static const TextStyle bold20 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.primaryColor
  );
  static const TextStyle semiBold18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: AppColors.primaryColor
  );

  static const TextStyle regular16 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: AppColors.secondaryColor
  );

  static const TextStyle regular14 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: AppColors.primaryColor
  );

}
