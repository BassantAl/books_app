import 'package:books_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:  8.0),
      child: AspectRatio(
        aspectRatio: 2.5 / 3.9,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: AssetImage(AppAssets.arts,),fit: BoxFit.cover),
          ),
          child: Center(child: Text('arts',)),
        ),
      ),
    );
  }
}