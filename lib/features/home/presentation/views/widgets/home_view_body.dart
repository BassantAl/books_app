import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar_home.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_categorys_list_view.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_search.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBarHome(),
            SizedBox(height: 30),
            CustomSearch(),
            SizedBox(height: 30),
            Expanded(child: CustomListView()),
          ],
        ),
      ),
    );
  }
}
