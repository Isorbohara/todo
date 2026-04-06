import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';


class Pulltasks extends StatefulWidget {
  const Pulltasks({super.key});

  @override
  State<Pulltasks> createState() => _PulltasksState();
}

class _PulltasksState extends State<Pulltasks> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('tasks')
            .orderBy('createdAt', descending: true)
            .snapshots(),

        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No tasks found"));
          }

          var tasks = snapshot.data!.docs;

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              var task = tasks[index];

              return ListTile(
                title: Text(task['title']),
                subtitle: Text(task['description']),

                trailing: Checkbox(
                  value: task['done'],
                  onChanged: (value) {
                    FirebaseFirestore.instance
                        .collection('tasks')
                        .doc(task.id)
                        .update({"done": value});
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  



}

