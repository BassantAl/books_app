import 'package:books_app/core/utils/models/book_category_model.dart';

class GetBooksCategoryState {}

class GetBooksCategorySuccess extends GetBooksCategoryState {
  final List<BookModel> books;
  GetBooksCategorySuccess({required this.books});
}

class GetBooksCategoryFailure extends GetBooksCategoryState {
  final String errorMessage;
  GetBooksCategoryFailure({required this.errorMessage});
}

class GetBooksCategoryInitial extends GetBooksCategoryState {}

class GetBooksCategoryLoading extends GetBooksCategoryState {
  
}
