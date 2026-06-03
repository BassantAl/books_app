import 'package:books_app/core/utils/app_decoration.dart';
import 'package:flutter/material.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({super.key, required GlobalKey<FormState> globalKey})
    : _globalKey = globalKey;
  final GlobalKey<FormState> _globalKey;
  @override
  Widget build(BuildContext context) {
    return Form(
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
              if (value!.isEmpty) {
                return 'please write your password';
              }else {
                return null;
              }
            },
            decoration: AppDecoration.inputFeildDecoration(
              hintText: 'password',
            ),
          ),
        ],
      ),
    );
  }
}
