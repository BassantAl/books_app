import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/features/category/data/models/book_category_model.dart';
import 'package:books_app/features/category/presentation/views/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            child: CustomNetworkImage(image: bookModel.coverImageUrl)),
          Text(bookModel.authorName,style: AppStyles.bold20,)
        ],
      ),
    );
  }
}
