import 'package:books_app/core/utils/errors.dart';
import 'package:books_app/core/utils/models/book_category_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
   Future<Either<Failure,List<BookModel>>> getSearchResult({required String bookTitle});
}
