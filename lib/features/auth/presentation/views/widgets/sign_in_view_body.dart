import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/app_styles.dart';
import 'package:books_app/features/auth/presentation/views/widgets/auth_footer.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_auth_icon.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final GlobalKey<FormState> globalKey = GlobalKey();
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
            CustomAuthIcon(icon: Icons.account_box),
            const SizedBox(height: 16),
            const Text('Create Account', style: AppStyles.bold24),
            const SizedBox(height: 16),
            CustomSignUpForm(globalKey: globalKey),
            const SizedBox(height: 40),
            CustomButton(
              child:Text('SignUp') ,
              onPressed: () {
                if (globalKey.currentState!.validate()) {
                  GoRouter.of(context).push(AppRoutes.home);
                }
              },
            ),
            const SizedBox(height: 20),
            AuthFooter(
              text: 'Already have an account?',
              buttontext: 'Login',
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRoutes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
