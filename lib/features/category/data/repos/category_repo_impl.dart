import 'package:books_app/core/utils/app_service.dart';
import 'package:books_app/core/utils/errors.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/category/data/models/book_category_model.dart';
import 'package:books_app/features/category/data/repos/category_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CategoryRepoImpl implements CategoryRepo {
  final repo = getIt<AppService>();
  final String url = 'https://openlibrary.org/subjects/';
  @override
  Future<Either<Failure, List<BookModel>>> fetchCategory(
    String categoryName,
  ) async {
    try {
      var data = await repo.get('$url+$categoryName.json');
      List<BookModel> books = [];
      for (var item in data['works']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
