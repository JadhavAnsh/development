import 'package:flutter/material.dart';
import 'package:to_do_list/task_module.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> taskList = [
    Task(
      title: 'Task Title',
      description: 'Description...',
      dateTime: '2024',
    ),
    Task(
      title: 'Task Title',
      description: 'Description...',
      dateTime: '2024',
      isChecked: true,
    ),
    Task(
      title: 'Task Title',
      description: 'Description...',
      dateTime: '2024',
    ),
  ];

  void updateTaskStatus(int index) {
    Task newTask = taskList[index].copyWith(
      isChecked: !taskList[index].isChecked,
    );

    print('newTask : ${newTask.toMap()}');

    taskList.removeAt(index);
    taskList.insert(index, newTask);

    setState(() {});
  }

  Widget _buildTaskCard(Task taskDetail, int index) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade100,
        child: Icon(
          Icons.star,
          color: Colors.amber.shade700,
        ),
      ),
      title: Text(taskDetail.title ?? ''),
      subtitle: Text(taskDetail.description ?? ''),
      trailing: Icon(
        taskDetail.isChecked
            ? Icons.check_box_rounded
            : Icons.check_box_outline_blank_rounded,
        color: taskDetail.isChecked ? Colors.green : Colors.grey,
      ),
      onTap: () => updateTaskStatus(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text('My Tasks'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: taskList.length,
        separatorBuilder: (context, index) {
          return SizedBox(height: 12);
        },
        itemBuilder: (context, index) {
          return _buildTaskCard(taskList[index], index);
        },
      ),
    );
  }
}
