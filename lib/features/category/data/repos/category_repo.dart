import 'package:books_app/core/utils/errors.dart';
import 'package:books_app/features/category/data/models/book_category_model.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryRepo {
   Future<Either<Failure,List<BookModel>>> fetchCategory(String categoryName);
}
