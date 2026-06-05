import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:books_app/features/auth/presentation/manager/cubits/signup_cubit/cubit/signup_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(authRepo: getIt.get<AuthRepoImpl>()),
      child: const Scaffold(body: SafeArea(child: SignInViewBody())),
    );
  }
}
