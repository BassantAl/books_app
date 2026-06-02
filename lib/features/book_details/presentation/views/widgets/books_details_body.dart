import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/core/utils/models/base_model.dart';
import 'package:books_app/features/category/presentation/views/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key, required this.baseModel, });
  final BaseModel baseModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: CustomNetworkImage(image: baseModel.coverImageUrl),
            ),
            Text(baseModel.title, style: AppStyles.bold24),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(baseModel.authorName, style: AppStyles.regular16),
            ),
            const SizedBox(height: 5),
            const Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_today,
                    color: AppColors.secondaryColor,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    baseModel.firstPublishYear.toString(),
                    style: AppStyles.regular14,
                  ),
                  Spacer(),
                  const Icon(
                    Icons.link,
                    color: AppColors.secondaryColor,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(Uri.parse(baseModel.bookUrl));
                    },
                    child: Text(
                      'Book Url',
                      style: AppStyles.regular14.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 0.5),
            const SizedBox(height: 5,),
            Align(
               alignment: Alignment.centerLeft,
              child: Visibility(
                visible:  baseModel.description.isNotEmpty,
                child: Text('description', style: AppStyles.bold20))),
              const SizedBox(height: 4,),
            Text(baseModel.description,style: AppStyles.regular14,),

          ],
        ),
      ),
    );
  }
}
