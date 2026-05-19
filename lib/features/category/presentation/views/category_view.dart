import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title:Text(categoryModel.name,style: AppStyles.semiBold18,) ,
        centerTitle: true,
      ),
      body: Center(child: Text(categoryModel.name),),
    );
  }
}
