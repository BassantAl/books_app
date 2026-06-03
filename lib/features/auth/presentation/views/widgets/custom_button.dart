import 'package:books_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
   this.onPressed,
  });

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStatePropertyAll(
          AppColors.secondaryColor,
        ),
        minimumSize: WidgetStatePropertyAll(
          const Size(double.infinity, 50),
        ),
      ),
      onPressed:onPressed,
      child: Text('login'),
    );
  }
}
