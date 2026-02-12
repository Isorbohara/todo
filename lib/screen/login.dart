import 'package:flutter/material.dart';
import 'package:todo/constant/color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:todobg,
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            image(),
             SizedBox(height: 50),
             Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
             child: Container(
              
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: const Color.fromARGB(255, 0, 0, 0),),
                  border: InputBorder.none,
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(179, 0, 0, 0),
                    fontSize: 16,
                  ),
                ),
                
              ),
              
             ))

          ],
        
        ),
      )),

    );
  }

  Padding image() {
    return Padding(padding:  EdgeInsets.symmetric(horizontal: 24),
          child:
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/undraw_enter-password_1kl4.png'), 
                fit: BoxFit.contain,
                
              ),
            ),
          
          )
          );
  }
}