import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    super.initState();
    animationOfChangeColor();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Text(
                'Books App',
                style: AppStyles.bold24.copyWith(color: animation.value),
              );
            },
          ),
        ],
      ),
    );
  }

  void animationOfChangeColor() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = ColorTween(
      begin: AppColors.secondaryColor,
      end: Colors.white,
    ).animate(controller);
    controller.forward();
  }

  void navigateToHomeView() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(AppRoutes.home);
    });
  }
}
