import 'package:bloc/bloc.dart';
import 'package:books_app/features/category/data/repos/category_repo.dart';
import 'package:books_app/features/category/presentation/manager/get_book_category_cubit/get_books_category_cubit_state.dart';

class GetBooksCategoryCubit extends Cubit<GetBooksCategoryState> {
  GetBooksCategoryCubit({required this.categoryRepo})
    : super(GetBooksCategoryInitial());
  final CategoryRepo categoryRepo;
  Future getBooks(String categoryName) async {
    emit(GetBooksCategoryLoading());
    var result = await categoryRepo.fetchCategory(categoryName);
    result.fold(
      (failure) {
        emit(GetBooksCategoryFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(GetBooksCategorySuccess(books: books));
      },
    );
  }
}
