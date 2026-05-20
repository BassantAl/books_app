import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/category/data/repos/category_repo_impl.dart';
import 'package:books_app/features/category/presentation/manager/get_book_category_cubit/get_books_category_cubit.dart';
import 'package:books_app/features/category/presentation/views/widgets/category_view_body.dart';
import 'package:books_app/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetBooksCategoryCubit(categoryRepo: getIt<CategoryRepoImpl>())..getBooks(categoryModel.name),
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text(categoryModel.name, style: AppStyles.semiBold18),
          centerTitle: true,
        ),
        body: CategoryViewBody(),
      ),
    );
  }
}
