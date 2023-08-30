import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'View/Screen/foodCategory.dart';
import 'View/Screen/onBoardingScreen.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});
  static String id = "Auth";
  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return FoodCategory();
            } else {
              return OnBoardingScreen();
            }
          }),
    );
  }
}
