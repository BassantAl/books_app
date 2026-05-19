import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_categorys_list_view_item.dart';
import 'package:flutter/material.dart';

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
          return CustomListViewItem(categoryModel: repo.categories[index],);
        },
      ),
    );
  }
}
