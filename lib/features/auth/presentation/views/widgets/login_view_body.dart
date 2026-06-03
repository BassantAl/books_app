import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_login_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          bottom: 16,
          right: 24,
          left: 24,
        ),
        child:  Column(
          children: [
            
            const SizedBox(height: 5),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black,
              ),
              child: Icon(Icons.login),
            ),
            const SizedBox(height: 16),
            const Text('Create Account', style: AppStyles.bold24),
            const SizedBox(height: 16),
             CustomLoginForm(globalKey: _globalKey),
            const SizedBox(height: 40),
            CustomButton(
              onPressed: () {
                if (_globalKey.currentState!.validate()) {
                  GoRouter.of(context).push(AppRoutes.home);
                }
              },
            ),
            const SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don`t have an account?',
                  style: AppStyles.regular16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('SignIn', style: AppStyles.regular16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  

  
}


