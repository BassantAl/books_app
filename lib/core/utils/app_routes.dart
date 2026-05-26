import 'package:books_app/features/category/data/models/book_category_model.dart';
import 'package:books_app/features/category/presentation/views/category_view.dart';
import 'package:books_app/features/home/data/models/category_model.dart';
import 'package:books_app/features/category/presentation/views/books_details.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String home = '/homeview';
  static const String category = '/categoryview';
  static const String bookDetails = '/bookdetails';
  static final GoRouter route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return SplashView();
        },
      ),
      GoRoute(
        path: home,
        builder: (context, state) {
          return HomeView();
        },
      ),
      GoRoute(
        path: category,
        builder: (context, state) {
          final categoryModel = state.extra as CategoryModel;
          return CategoryView(categoryModel: categoryModel);
        },
      ),
      GoRoute(
        path: bookDetails,
        builder: (context, state) {
          final bookModel=state.extra as BookModel;
          return BooksDetails(bookModel:bookModel ,);
        },
      ),
    ],
  );
}
