import 'package:books_app/features/category/data/models/book_category_model.dart';

abstract class CategoryRepo {
  Future<List<BookModel>> fetchCategory(String categoryName);
}
