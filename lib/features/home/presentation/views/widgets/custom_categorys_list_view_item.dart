import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio: 2.5 / 3.9,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(categoryModel.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(child: Text(categoryModel.name,style: AppStyles.semiBold18.copyWith(fontWeight: FontWeight.normal))),
        ),
      ),
    );
  }
}
