import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indector.dart';
import 'package:books_app/features/category/presentation/manager/get_book_category_cubit/get_books_category_cubit.dart';
import 'package:books_app/features/category/presentation/manager/get_book_category_cubit/get_books_category_cubit_state.dart';
import 'package:books_app/core/widgets/category_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryBooksListView extends StatelessWidget {
  const CategoryBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBooksCategoryCubit, GetBooksCategoryState>(
      builder: (context, state) {
        if (state is GetBooksCategorySuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return CategoryBooksListViewItem(baseModel: state.books[index]);
            },
          );
        } else if (state is GetBooksCategoryFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndector();
        }
      },
    );
  }
}
