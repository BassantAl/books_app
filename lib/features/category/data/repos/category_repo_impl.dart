import 'package:books_app/core/utils/app_service.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/category/data/models/book_category_model.dart';
import 'package:books_app/features/category/data/repos/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  final repo = getIt<AppService>();
  final String url = 'https://openlibrary.org/subjects/';
  @override
  Future<List<BookModel>> fetchCategory(String categoryName) async {
    var data = await repo.get('$url+$categoryName.json');
    List<BookModel> books = [];
    for (var item in data['works']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
