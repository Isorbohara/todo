import 'package:flutter/material.dart';
import 'package:todo/screen/Signup.dart';
import 'package:todo/screen/login.dart';

class Auth_page
 extends StatefulWidget {
  const Auth_page
  ({super.key});

  @override
  State<Auth_page> createState() => _Auth_pageState();
}

class _Auth_pageState extends State<Auth_page> {
bool a=true;
void to(){
  setState(() {
    a=!a;
  });
}

  @override
  Widget build(BuildContext context) {
    if(a){
      return Login(to);
    }else{
      return SignupScr(to);
    }
}}