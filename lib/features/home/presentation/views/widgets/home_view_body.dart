import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar_home.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_categorys_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomAppBarHome()),
            SliverToBoxAdapter(child:  SizedBox(height: 20,)),
            SliverFillRemaining(child:CustomListView() ,)
          ],
        ),
      ),
    );
  }
}