import 'package:books_app/core/utils/app_assets.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/core/widgets/image_books_item.dart';
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
          SizedBox(
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
          ),
        ],
      ),
    );
  }
}