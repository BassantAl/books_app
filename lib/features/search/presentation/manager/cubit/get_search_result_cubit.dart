import 'package:bloc/bloc.dart';
import 'package:books_app/features/search/data/models/search_model.dart';
import 'package:books_app/features/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

part 'get_search_result_state.dart';

class GetSearchResultCubit extends Cubit<GetSearchResultState> {
  GetSearchResultCubit({required this.searchRepo})
    : super(GetSearchResultInitial());
  final SearchRepo searchRepo;
  Future getSearchResult({required String bookTitle}) async {
    emit(GetSearchResultLoading());
    var result = await searchRepo.getSearchResult(bookTitle: bookTitle);

    result.fold(
      (failure) {
        emit(GetSearchResultFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(GetSearchResultSuccess(books: books));
      },
    );
  }
}
