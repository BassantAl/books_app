import 'package:books_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppDecoration {
 static  InputDecoration inputFeildDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.secondaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    );
  }
}