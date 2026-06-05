import 'package:books_app/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SignInViewBody()));
  }
}
