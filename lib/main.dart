import 'package:flutter/material.dart';
import 'package:iti_project/features/auth/views/login_view.dart';
import 'package:iti_project/features/home/views/home_view.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
