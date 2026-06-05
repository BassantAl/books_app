import 'package:books_app/core/utils/app_decoration.dart';
import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/widgets/custom_loading_indector.dart';
import 'package:books_app/features/auth/presentation/manager/cubits/login_cubit/cubit/login_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({super.key});

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  String? email = '';
  String? password = '';
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).push(AppRoutes.home);
        }

        if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            ),
          );
        }
      },
      child: Form(
        key: _globalKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                email = value;
                if (value!.isEmpty) {
                  return 'please write your email';
                } else {
                  return null;
                }
              },
              decoration: AppDecoration.inputFeildDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 40),
            TextFormField(
              obscureText: true,
              validator: (value) {
                password = value;
                if (value!.isEmpty) {
                  return 'please write your password';
                } else {
                  return null;
                }
              },
              decoration: AppDecoration.inputFeildDecoration(
                hintText: 'password',
              ),
            ),
            const SizedBox(height: 40),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                return CustomButton(
                  child: state is LoginLoading? CustomLoadingIndector():Text('login') ,
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      BlocProvider.of<LoginCubit>(
                        context,
                      ).login(emailAddress: email!, password: password!);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
