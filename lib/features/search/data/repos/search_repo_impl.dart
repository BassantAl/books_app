import 'package:books_app/core/utils/app_service.dart';
import 'package:books_app/core/utils/errors.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/core/utils/models/book_category_model.dart';
import 'package:books_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  @override
  Future<Either<Failure, List<BookModel>>> getSearchResult({
    required String bookTitle,
  }) async {
    String url = 'https://openlibrary.org/search.json?title=$bookTitle';
    try {
      var data = await getIt.get<AppService>().get(url);
      List<BookModel> books = [];
      for (var item in data['docs']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
