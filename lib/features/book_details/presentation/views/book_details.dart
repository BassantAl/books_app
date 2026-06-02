import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/core/utils/models/base_model.dart';
import 'package:books_app/features/book_details/presentation/views/widgets/books_details_body.dart';
import 'package:flutter/material.dart';

class BooksDetails extends StatelessWidget {
  const BooksDetails({super.key, required this.baseModel, });
  final BaseModel baseModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book Details', style: AppStyles.bold20)),
      body: BooksDetailsBody(baseModel: baseModel,),
    );
  }
}
