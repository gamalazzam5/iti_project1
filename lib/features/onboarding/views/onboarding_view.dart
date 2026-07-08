import 'package:flutter/material.dart';
import 'package:iti_project/core/utils/app_colors.dart';
import 'package:iti_project/core/utils/app_text_styles.dart';
import 'package:iti_project/core/widgets/app_button.dart';
import 'package:iti_project/features/auth/views/login_view.dart';
import 'package:iti_project/features/auth/views/sign_up_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40),
            Image.asset('assets/images/onboarding_1.png', height: 350),
            SizedBox(height: 40),
            Text(
              'Welcome to our app',
              style: AppTextStyles.k20TextButton,
            ),
            SizedBox(height: 20),
            Text(
              'Shop online and get groceries\ndelivered from stores to your home\nin as fast as 1 hour .',
              style: AppTextStyles.k14TextButton,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60),
            AppButton(
              text: 'Sign Up',
              onPressed: () => Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => SignUpView())),
            ),
            SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.primaryColor),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginView()),
                );
              },
              child: Text(
                'Sign in',
                style: AppTextStyles.k17TextButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
