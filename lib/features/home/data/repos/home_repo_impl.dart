import 'package:books_app/core/utils/app_assets.dart';
import 'package:books_app/features/home/data/models/category_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl  implements HomeRepo {
  @override

  List<CategoryModel> get categories {
    return const [
      CategoryModel(image: AppAssets.arts, name: 'Arts'),
      CategoryModel(image: AppAssets.business, name: 'Business'),
      CategoryModel(image: AppAssets.childern, name: 'Childern'),
      CategoryModel(image: AppAssets.history, name: 'History'),
      CategoryModel(image: AppAssets.language, name: 'Language'),
      CategoryModel(image: AppAssets.scienceAndMath, name: 'Science&Math'),
    ];
  }
}