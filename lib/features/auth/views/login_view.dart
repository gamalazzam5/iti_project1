import 'package:flutter/material.dart';
import 'package:iti_project/features/auth/views/sign_up_view.dart';

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
        leading: Icon(Icons.arrow_back_ios, color: Color(0xFFFF5E00)),
        title: Text(
          'Sign in',
          style: TextStyle(fontSize: 24, color: const Color(0xFFFF5E00)),
        ),
      ),
      body: Padding(
        padding: const .symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              SizedBox(height: 20),
              Image.asset('assets/images/sign_up.png', height: 350),
              SizedBox(height: 8),
              Text(
                'Enter your Email and \npassword to access your account',
                style: TextStyle(color: const Color(0xFF6D3805), fontSize: 18),
              ),
              SizedBox(height: 30),
              TextFormField(
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Color(0xFFF3F3F3),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7F4E1D),
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFFF5E00)),
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined,color: const Color(0xFFFF5E00),),
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF7F4E1D),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFFF5E00)),
                  ),
                ),
              ),
              Align(
                alignment: .centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xFFFF5E00)),
                  ),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF5E00),
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Color(0xFF7F4E1D), fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpView()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xFFFF5E00), fontWeight: FontWeight.bold),
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
