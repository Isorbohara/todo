import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:todo/auth/auth_Page.dart';
import 'package:todo/screen/home.dart';

class Main_page extends StatelessWidget {
  const Main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),builder: (context, snapshot) {
          if(snapshot.hasData){
            return Homepage();
          }else{
            return Auth_page();
          }
        },
      )
    );}}