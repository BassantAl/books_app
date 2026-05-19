import 'package:books_app/features/category/presentation/views/widgets/books_details_item.dart';
import 'package:flutter/material.dart';

class CategoryBooksListViewItem extends StatelessWidget {
  const CategoryBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8,bottom: 12),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16)
            ),
          ),
          BooksDetailsItem(),
        ],
      ),
    );
  }
}
