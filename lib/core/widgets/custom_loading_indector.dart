import 'package:books_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomLoadingIndector extends StatelessWidget {
  const CustomLoadingIndector({super.key,  this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: color??AppColors.secondaryColor),
    );
  }
}
