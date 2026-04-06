import 'package:flutter/material.dart';
import 'package:todo/screen/activities.dart';
import 'package:todo/screen/complete.dart';
import 'package:todo/screen/homecontent.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/screen/pulltasks.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {



  
   int currentIndex = 0;
   bool isLoading = false;

  // 👇 ADD HERE
  
   void _addTaskDialog() {
    TextEditingController title = TextEditingController();
    TextEditingController description = TextEditingController();
    TextEditingController date = TextEditingController();

   showDialog(
  context: context,
  builder: (_) {
    bool isLoading = false; // local state

    return StatefulBuilder(
      builder: (context, setStateDialog) {
        return AlertDialog(
          title: Text("Add Task"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller: title, decoration: InputDecoration(labelText: "Title")),
              TextField(controller: description, decoration: InputDecoration(labelText: "Description")),
              TextField(controller: date, decoration: InputDecoration(labelText: "Date")),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () async {
                setStateDialog(() => isLoading = true); // ✅ dialog rebuild

                try {
                  await FirebaseFirestore.instance.collection('tasks').add({
                    "title": title.text,
                    "description": description.text,
                    "date": date.text,
                    "done": false,
                    "createdAt": Timestamp.now(),
                  });

                  Navigator.pop(context);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Task added successfully")),
                  );

                } catch (e) {
                  setStateDialog(() => isLoading = false);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Error adding task")),
                  );
                }
              },
              child: isLoading
                  ? SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text("Add"),
            ),
          ],
        );
      },
    );
  },
);
  }

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
  body: [
  // HomeContent(tasks: tasks),
  Pulltasks(),
  Activities(tasks: tasks),
  Complete(tasks: tasks),
][currentIndex],
  


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
   floatingActionButton: FloatingActionButton(
  onPressed: _addTaskDialog, // ✅ change this, while pressing it run the addtaskdialog function
  child: Icon(Icons.add),
),
  
 
);        
}}