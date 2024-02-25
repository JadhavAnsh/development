import 'package:flutter/material.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});
  List<Task> TaskList = [
    Task
  ];

  Widget _buildTaskCard(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(,
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(
          
        ),
      ),
    )
    );
  }

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
