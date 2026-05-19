import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.route,
      theme: ThemeData.dark(),
    );
  }
}
