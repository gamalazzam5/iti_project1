import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const .symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            SizedBox(height: 40),
            Image.asset('assets/images/onboarding_1.png', height: 350),
            SizedBox(height: 40),
            Text(
              'Welcome to our app',
              style: TextStyle(
                color: Color(0xFF7F4E1D),
                fontSize: 20,
                fontWeight: .w400,
              ),
              textAlign: .center,
            ),
            SizedBox(height: 20),
            Text(
              'Shop online and get groceries\ndelivered from stores to your home\nin as fast as 1 hour .',
              style: TextStyle(
                color: Color(0xFF7F4E1D),
                fontSize: 14,
                fontWeight: .w400,
              ),
              textAlign: .center,
            ),
            SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF5E00),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text(
                'Sign up',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Color(0xFFFF5E00)
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(color: Color(0xFFFF5E00), fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
