import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key, required this.text, this.onPressed, required this.buttontext});
  final String text;
  final String buttontext;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.regular16.copyWith(color: AppColors.primaryColor),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(buttontext, style: AppStyles.regular16),
        ),
      ],
    );
  }
}
