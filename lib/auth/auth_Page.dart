import 'package:flutter/material.dart';
import 'package:todo/screen/signup.dart';
import 'package:todo/screen/login.dart';

class Authpage extends StatefulWidget {
  const Authpage({super.key});

  @override
  State<Authpage> createState() => _AuthpageState();
}

class _AuthpageState extends State<Authpage> {
  bool isLogin = true;

  void toggleScreen() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLogin ? Login(toggleScreen) : SignupScr(toggleScreen),
    );
  }
}