import 'package:books_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Books',style: AppStyles.semiBold18,),
        Spacer(),
        IconButton(onPressed: (){}, icon: const Icon(Icons.search,))
      ],
    );
  }
}