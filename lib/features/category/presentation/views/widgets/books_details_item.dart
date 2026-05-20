import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/core/widgets/image_books_item.dart';
import 'package:books_app/features/category/data/models/book_category_model.dart';
import 'package:flutter/material.dart';

class BooksDetailsItem extends StatelessWidget {
  const BooksDetailsItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            ImageBooksItem(image: NetworkImage(bookModel.coverImageUrl),),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bookModel.title,
                    style: AppStyles.semiBold18,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(bookModel.authorName,maxLines: 1,overflow: TextOverflow.ellipsis,),
                ],
              ),
            ),
            SizedBox(width: 4,),
            Text('(${bookModel.firstPublishYear.toString()})',style: AppStyles.regular16,),
          ],
        ),
      ),
    );
  }
}
