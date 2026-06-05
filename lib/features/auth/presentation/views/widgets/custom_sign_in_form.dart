import 'package:books_app/core/utils/app_decoration.dart';
import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/widgets/custom_loading_indector.dart';
import 'package:books_app/features/auth/presentation/manager/cubits/signup_cubit/cubit/signup_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomSignUpForm extends StatefulWidget {
  const CustomSignUpForm({super.key});

  @override
  State<CustomSignUpForm> createState() => _CustomSignUpFormState();
}

class _CustomSignUpFormState extends State<CustomSignUpForm> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          GoRouter.of(context).push(AppRoutes.home);
        }

        if (state is SignupFailure) {
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
                if (value!.isEmpty) {
                  return 'please write your name';
                } else {
                  return null;
                }
              },
              decoration: AppDecoration.inputFeildDecoration(hintText: 'name'),
            ),
            SizedBox(height: 40),
            TextFormField(
              validator: (value) {
                email = value;
                if (value!.isEmpty) {
                  return 'please write your email';
                } else {
                  return null;
                }
              },
              decoration: AppDecoration.inputFeildDecoration(hintText: 'email'),
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
            SizedBox(height: 40),
            TextFormField(
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please Confirm password';
                } else {
                  return null;
                }
              },
              decoration: AppDecoration.inputFeildDecoration(
                hintText: 'Confirm password',
              ),
            ),

            const SizedBox(height: 40),
            BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                return CustomButton(
                  child: state is SignupLoading?CustomLoadingIndector(color: Colors.black,) : Text('SignUp'),
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      BlocProvider.of<SignupCubit>(
                        context,
                      ).signUp(emailAddress: email!, password: password!);
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

// basant.ali123zx@gmail.com
//123456
