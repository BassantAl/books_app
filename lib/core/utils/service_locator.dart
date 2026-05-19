import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl());
}
