
import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
   final List<Map<String, dynamic>> tasks;

  Activities({required this.tasks});
  

  Widget build(BuildContext context) {
    final activeTasks =
        tasks.where((t) => t["done"] == false).toList();

    return ListView.builder(
      itemCount: activeTasks.length,
      itemBuilder: (context, index) {
        var task = activeTasks[index];

        return ListTile(
          title: Text(task["title"]),
          subtitle: Text(task["description"]),
        );
      },
    );
  }
}
