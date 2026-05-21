import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_category_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  final repo = getIt<HomeRepoImpl>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: repo.categories.length,
        itemBuilder: (context, index) {
          final borderRadius = BorderRadius.circular(16.0);
          return GestureDetector(
            onTap: () {
              GoRouter.of(
                context,
              ).push(AppRoutes.category, extra: repo.categories[index]);
            },
            child: CustomCategoryContainer(
              borderRadius: borderRadius,
              repo: repo,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
