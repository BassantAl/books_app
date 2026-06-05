import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:books_app/features/auth/presentation/manager/cubits/login_cubit/cubit/login_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(authRepo: getIt.get<AuthRepoImpl>()),
      child: const Scaffold(body: SafeArea(child: LoginViewBody())),
    );
  }
}
