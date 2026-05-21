
import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/features/home/presentation/views/widgets/image_books_item.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter/material.dart';

class CustomCategoryContainer extends StatelessWidget {
  const CustomCategoryContainer({
    super.key,
    required this.borderRadius,
    required this.repo, required this.index,
  });

  final BorderRadius borderRadius;
  final HomeRepoImpl repo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: Border.all(color: AppColors.primaryColor),
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ImageBooksItem(image: AssetImage(repo.categories[index].image)),

              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.7),
                      ],
                      stops: const [0.5, 1.0],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
                child: Text(
                  repo.categories[index].name,
                  style: AppStyles.bold24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
