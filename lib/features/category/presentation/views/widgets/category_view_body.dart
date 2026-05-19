
import 'package:books_app/features/category/presentation/views/widgets/category_books_list_view.dart';

import 'package:flutter/material.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 10,),
        Expanded(child: CategoryBooksListView())
      ],
    );
  }
}
