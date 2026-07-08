import 'package:flutter/material.dart';
import 'package:iti_project/core/utils/app_colors.dart';
import 'package:iti_project/core/widgets/app_button.dart';
import 'package:iti_project/features/auth/views/sign_up_view.dart';
import 'package:iti_project/features/home/views/home_view.dart';

import '../../../core/widgets/app_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
        title: Text(
          'Sign in',
          style: TextStyle(fontSize: 24, color: AppColors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Image.asset('assets/images/sign_up.png', height: 350),
              SizedBox(height: 8),
              Text(
                'Enter your Email and \npassword to access your account',
                style: TextStyle(color: AppColors.secondaryColor, fontSize: 18),
              ),
              SizedBox(height: 30),
              AppFormField(hintText: 'Email',),
              SizedBox(height: 8),
              AppFormField(
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.primaryColor,
                    ),
              ),
              Align(
                alignment: .centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ),
              SizedBox(height: 24),
              AppButton(text: 'Sign in',
              onPressed: (){
                Navigator.push(context,  MaterialPageRoute(builder: (context)=>HomeView()));
              },),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: AppColors.hintColor, fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpView()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: AppColors.primaryColor , fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


