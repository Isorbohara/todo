
import 'package:flutter/material.dart';

  class HomeContent extends StatelessWidget {
  final List<Map<String, dynamic>> tasks;

  HomeContent({required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        var task = tasks[index];

        return ListTile(
          title: Text(task["title"]),
          subtitle: Text(task["description"]),
          trailing: Checkbox(
            value: task["done"],
            onChanged: (value) {
              task["done"] = value;
              (context as Element).markNeedsBuild(); // refresh
            },
          ),
        );
      },
    );
  }
}
