import 'package:flutter/material.dart';
import 'package:login_signup_events/home_screen.dart';
import 'package:login_signup_events/new_user_registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Sign-Up Events',
      home: HomeScreen(),
    );
  }
}
