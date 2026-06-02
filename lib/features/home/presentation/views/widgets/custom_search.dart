import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        FocusScope.of(context).unfocus();
        GoRouter.of(context).push(AppRoutes.search, extra: value);
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.secondaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        hintText: 'search about books',
        suffixIcon: IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.search);
          },
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}
