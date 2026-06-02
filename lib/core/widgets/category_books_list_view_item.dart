import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/models/base_model.dart';
import 'package:books_app/features/book_details/presentation/views/widgets/books_details_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryBooksListViewItem extends StatelessWidget {
  const CategoryBooksListViewItem({super.key, required this.baseModel, });
  final BaseModel baseModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetails,extra: baseModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.secondaryColor.withAlpha(50),
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            BooksDetailsItem(baseModel: baseModel),
          ],
        ),
      ),
    );
  }
}
