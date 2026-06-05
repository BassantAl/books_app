import 'package:books_app/core/utils/errors/server_failure.dart';
import 'package:books_app/core/utils/services/app_service.dart';
import 'package:books_app/core/utils/errors/errors.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/search/data/models/search_model.dart';
import 'package:books_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  @override
  Future<Either<Failure, List<SearchModel>>> getSearchResult({
    required String bookTitle,
  }) async {
    String url = 'https://openlibrary.org/search.json?title=$bookTitle';
    try {
      var data = await getIt.get<AppService>().get(url);
      List<SearchModel> books = [];
      for (var item in data['docs']) {
        books.add(SearchModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
