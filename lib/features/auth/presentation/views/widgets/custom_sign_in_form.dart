import 'package:books_app/core/utils/app_decoration.dart';
import 'package:flutter/material.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key, required this.globalKey});
  final GlobalKey<FormState> globalKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
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
              if (value!.isEmpty) {
                return 'please write your name';
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
                return 'please write your password';
              } else {
                return null;
              }
            },
            decoration: AppDecoration.inputFeildDecoration(
              hintText: 'Confirm password',
            ),
          ),
        ],
      ),
    );
  }
}
