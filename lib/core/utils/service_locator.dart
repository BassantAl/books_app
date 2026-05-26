
import 'package:books_app/core/utils/app_service.dart';
import 'package:books_app/features/category/data/repos/category_repo_impl.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl());
  getIt.registerSingleton<AppService>(AppService(dio: Dio()));
  getIt.registerSingleton<CategoryRepoImpl>(CategoryRepoImpl());

}
