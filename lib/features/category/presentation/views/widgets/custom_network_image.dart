
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14,),
      child: AspectRatio(
        aspectRatio: 2.3 / 3.2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl: image,
            errorWidget: (context, url, error) {
              return Icon(Icons.error);
            },
          ),
        ),
      ),
    );
  }
}
