import 'package:flutter/material.dart';

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
            onTap: ()=>Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios, color: Color(0xFFFF5E00))),
        title: Text(
          'Sign Up',
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
                'Please enter your information to\ncreate an account.',
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
              SizedBox(height: 8,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined,color: const Color(0xFFFF5E00),),
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  hintText: 'confirm Password',
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
              SizedBox(height: 24),
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
            ],
          ),
        ),
      ),
    );
  }
}
