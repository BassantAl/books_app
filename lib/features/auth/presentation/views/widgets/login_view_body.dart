import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/features/auth/presentation/views/widgets/auth_footer.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_auth_icon.dart';
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
        child: Column(
          children: [
            const SizedBox(height: 5),
            CustomAuthIcon(icon: Icons.login,),
            const SizedBox(height: 16),
            const Text('Login to your account', style: AppStyles.bold24),
            const SizedBox(height: 16),
            CustomLoginForm(globalKey: _globalKey),
            const SizedBox(height: 40),
            CustomButton(
              text: 'login',
              onPressed: () {
                if (_globalKey.currentState!.validate()) {
                  GoRouter.of(context).push(AppRoutes.home);
                }
              },
            ),
            const SizedBox(height: 20),
            AuthFooter(
              text: 'Don`t have an account?',
              buttontext: 'SignUp',
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRoutes.signIn);
              },
            ),
          ],
        ),
      ),
    );
  }
}

