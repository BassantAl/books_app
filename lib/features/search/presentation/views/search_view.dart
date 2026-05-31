import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/search/data/repos/search_repo_impl.dart';
import 'package:books_app/features/search/presentation/manager/cubit/get_search_result_cubit.dart';
import 'package:books_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, required this.bookTitle});
  final String bookTitle;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetSearchResultCubit(searchRepo: getIt.get<SearchRepoImpl>()..getSearchResult(bookTitle: bookTitle)),
      child: Scaffold(body: SearchViewBody()),
    );
  }
}
