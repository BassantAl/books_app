import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/core/utils/models/base_model.dart';
import 'package:books_app/features/category/presentation/views/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsItem extends StatelessWidget {
  const BooksDetailsItem({super.key, required this.baseModel, });
  final BaseModel baseModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          children: [
            CustomNetworkImage(image: baseModel.coverImageUrl),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    baseModel.title,
                    style: AppStyles.semiBold18,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    baseModel.authorName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(width: 4),
            Text(
              '(${baseModel.firstPublishYear.toString()})',
              style: AppStyles.regular16,
            ),
          ],
        ),
      ),
    );
  }
}
