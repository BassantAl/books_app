import 'package:books_app/core/utils/app_colors.dart';
import 'package:books_app/core/utils/app_routes.dart';
import 'package:books_app/core/utils/app_styles.dart';
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
            Text('Create Account',style: AppStyles.bold24,),
            SizedBox(height: 5,),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black
              ),
              child: Icon(Icons.login)),
            SizedBox(height: 16,),
            Form(
              key: _globalKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please write your name';
                      }
                    },
                    decoration: inputFeildDecoration(hintText: 'name'),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please write your password';
                      }
                    },
                    decoration: inputFeildDecoration(hintText: 'password'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ButtonStyle(
                textStyle: WidgetStatePropertyAll(
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                foregroundColor: WidgetStatePropertyAll(Colors.black),
                backgroundColor: WidgetStatePropertyAll(
                  AppColors.secondaryColor,
                ),
                minimumSize: WidgetStatePropertyAll(
                  const Size(double.infinity, 50),
                ),
              ),
              onPressed: () {
                if(_globalKey.currentState!.validate()){
                   GoRouter.of(context).push(AppRoutes.home);
                }
               
              },
              child: Text('login'),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don`t have an account?',style: AppStyles.regular16.copyWith(color: AppColors.primaryColor),),
                TextButton(onPressed: (){}, child: Text('SignIn',style: AppStyles.regular16,))
              ],
            )
          ],
        ),
      ),
    );
  }

  InputDecoration inputFeildDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.secondaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    );
  }
}
