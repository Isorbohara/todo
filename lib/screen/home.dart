
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/auth/auth_page.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
@override
void initState() {
  super.initState();

  Future.delayed(Duration(seconds: 3), () {
    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => Authpage()),
    );
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body:
      Container(
        decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.blue.shade100,
          ],
          ),
        ),
          child: Center(
        
      
          child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [ SvgPicture.asset('assets/undraw_welcome-cats_tw36.svg', fit: BoxFit.contain),
           
          
          const Text('Everything you need to do', style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
          const SizedBox(height: 20),
          const Text('Organize your tasks and projects with our simple and intuitive to-do app.', 
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
            ),
          ],
        )
      ),
      ),
      
      ); 
  }
}