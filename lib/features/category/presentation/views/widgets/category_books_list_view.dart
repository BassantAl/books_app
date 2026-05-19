import 'package:books_app/features/category/presentation/views/widgets/category_books_list_view_item.dart';
import 'package:flutter/material.dart';

class CategoryBooksListView extends StatelessWidget {
  const CategoryBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CategoryBooksListViewItem();
      },
    );
  }
}
