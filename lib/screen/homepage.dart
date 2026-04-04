import 'package:flutter/material.dart';
import 'package:todo/screen/activities.dart';
import 'package:todo/screen/complete.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
    final List<Widget> pages = [
    Center(child: Text('Home')),
    Activities(),
    Complete(),
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
  backgroundColor: Colors.white,
  appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 27, 73, 141),
    title: Row(
      children: [
        Icon(Icons.add_task_outlined, color: Colors.white),
        SizedBox(width: 8),
        Text(
          "To-Do App",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
  body: pages[currentIndex],
  


bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "Activities",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check),
          label: "Completed",
        ),
      ],
    ),
);        
}}