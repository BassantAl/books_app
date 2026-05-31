import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indector.dart';
import 'package:books_app/features/category/presentation/views/widgets/category_books_list_view_item.dart';
import 'package:books_app/features/search/presentation/manager/cubit/get_search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSearchResultCubit, GetSearchResultState>(
      builder: (context, state) {
        if (state is GetSearchResultSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return CategoryBooksListViewItem(bookModel: state.books[index]);
            },
          );
        } else if (state is GetSearchResultFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndector();
        }
      },
    );
  }
}
