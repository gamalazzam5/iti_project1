import 'package:flutter/material.dart';
import 'package:iti_project/core/utils/app_colors.dart';
import 'package:iti_project/core/widgets/app_button.dart';
import 'package:iti_project/core/widgets/app_form_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
        ),
        title: Text(
          'Sign Up',
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
                'Please enter your information to\ncreate an account.',
                style: TextStyle(color: AppColors.secondaryColor, fontSize: 18),
              ),
              SizedBox(height: 30),
              AppFormField(hintText: 'Email'),
              SizedBox(height: 8),
              AppFormField(
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 8),
              AppFormField(
                hintText: 'confirm Password',
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 24),
              AppButton(
                text: 'Sign Up',
                onPressed: () {},
              ),
                SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
