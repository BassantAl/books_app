part of 'get_search_result_cubit.dart';

@immutable
sealed class GetSearchResultState {}

final class GetSearchResultInitial extends GetSearchResultState {}

class GetSearchResultSuccess extends GetSearchResultState {
  final List<SearchModel> books;
  GetSearchResultSuccess({required this.books});
}

class GetSearchResultFailure extends GetSearchResultState {
  final String errorMessage;
  GetSearchResultFailure({required this.errorMessage});
}


class GetSearchResultLoading extends GetSearchResultState {}
