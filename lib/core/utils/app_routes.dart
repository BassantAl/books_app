import 'package:books_app/features/home/views/home_view.dart';
import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String home = '/homeview';
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
    ],
  );
}
