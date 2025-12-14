import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:const Color.fromARGB(255, 192, 151, 225),

      
      body: const Center(
      
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
      );
  }
}
