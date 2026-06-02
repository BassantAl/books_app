import 'package:books_app/core/utils/errors.dart';
import 'package:books_app/features/search/data/models/search_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
   Future<Either<Failure,List<SearchModel>>> getSearchResult({required String bookTitle});
}
