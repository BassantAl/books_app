
import 'package:books_app/core/utils/app_assets.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/core/widgets/image_books_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsItem extends StatelessWidget {
  const BooksDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            ImageBooksItem(image: AppAssets.arts),
            Expanded(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                Text('Harry Potter and the Goblet of Fire',style: AppStyles.semiBold18,textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,maxLines: 2,),
                Text('Rudyard Kipling')
              ],
              
              ),
                  
            ),
            Text('2024')
          ],
        ),
      ),
    );
  }
}