import 'package:flutter/material.dart';

class ImageBooksItem extends StatelessWidget {
  const ImageBooksItem({super.key, this.child, required this.image});

  final Widget? child;
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio: 2.5 / 3.9,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: image, fit: BoxFit.cover),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
