import 'package:flutter/material.dart';
import 'package:todo/constant/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScr extends StatefulWidget {
  const SignupScr({super.key});

  @override
  State<SignupScr> createState() => _SignupScrState();
}

class _SignupScrState extends State<SignupScr> {
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmpasswordFocusNode = FocusNode();

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  @override
  void initState(){
    super.initState();
    emailFocusNode.addListener(() {
      setState(() {});
    });
    passwordFocusNode.addListener(() {
      setState(() {});
    });
    confirmpassword.addListener(() {
      setState(() {});
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:todobg,
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            image(),
             SizedBox(height: 50),
             textfield(email, emailFocusNode, 'Email', Icons.email,),
               SizedBox(height: 10),
              textfield(password, passwordFocusNode, 'Password', Icons.lock,),
              SizedBox(height: 10),
              textfield(confirmpassword, confirmpasswordFocusNode, 'Confirm Password', Icons.lock,),
              SizedBox(height: 8),

             
              SizedBox(height: 20),
               login_(),
                SizedBox(height: 20),
               account(),

          ],
        ),
      )),
    );
  }


  Widget login_() {
    return Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 27, 73, 141),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                ),
               ),
             );
  }

  Padding account() {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                 children: [
                 

                  Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: [
              Text('Do you have an account?', style: TextStyle(color: Colors.black54, fontSize: 14),),
              SizedBox(width: 5),
              Text('login', style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.bold),),
              SizedBox(width: 20),           
                ],
                
              ),
                 ]
              ),             
              
            );
               
              
            
  }
  Widget  textfield(TextEditingController controller , FocusNode focusNode, String typename, IconData iconss) {
    return Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
           child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              obscureText: typename == 'Password' ? true : false,
              decoration: InputDecoration(
                prefixIcon: Icon(iconss, color: const Color.fromARGB(255, 27, 73, 141),),
                border: InputBorder.none,
                hintText: 'typename ',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.black26, width: 2),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: const Color.fromARGB(66, 103, 108, 245), width: 2),
                ),
              ),
              
            ),
            
           ));
  }

 Widget image() {
  return SizedBox(
    width: double.infinity,
    height: 300,
    child: Stack(
      children: [
        SvgPicture.asset('assets/Login-amico (1).svg', fit: BoxFit.contain),
        // You can add other widgets here on top of the image
      ],
    ),
  );
}
}