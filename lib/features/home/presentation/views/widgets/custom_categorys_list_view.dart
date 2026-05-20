import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/core/widgets/image_books_item.dart';
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
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child:  ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:repo.categories.length ,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.category,extra:repo.categories[index] );
            },
            child: ImageBooksItem(image: AssetImage(repo.categories[index].image),child: Text(repo.categories[index].name,style: AppStyles.semiBold18,),));
        },
      ),
    );
  }
}
