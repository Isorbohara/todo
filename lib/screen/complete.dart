
import 'package:flutter/material.dart';

class Complete extends StatelessWidget {
 final List<Map<String, dynamic>> tasks;

  Complete({required this.tasks});

  @override
  Widget build(BuildContext context) {
    final completedTasks =
        tasks.where((t) => t["done"] == true).toList();

    return ListView.builder(
      itemCount: completedTasks.length,
      itemBuilder: (context, index) {
        var task = completedTasks[index];

        return ListTile(
          title: Text(
            task["title"],
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          subtitle: Text(task["description"]),
        );
      },
    );
  }
}