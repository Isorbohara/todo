import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
          children: [
            Image(
              image: AssetImage('assets/undraw_to-do-list_eoia.png'),
              height: 180,
              width: 180,
            ),
          
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