import 'package:flutter/material.dart';
import 'package:to_do_app/constant/app_colors.dart';
import 'package:to_do_app/task_module.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen(
      {super.key, required Task addTasks, required Task add_Tasks});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> taskList = [
    Task(
      title: 'Task 1',
      description: 'Complete Java Chapter 1',
      dateTime: '17/02/2024',
    ),
    Task(
      title: 'Task 2',
      description: 'Complete Java Chapter 2',
      dateTime: '18/02/2024',
      // isChecked: true,
    ),
    Task(
      title: 'Task 3',
      description: 'Complete Java Chapter 3',
      dateTime: '19/02/2024',
    ),
  ];

  // void removeCheckedTasks() {
  //   List<Task> newTaskList = [];

  //   for{}
  // }

  void updateTaskStatus(int index) {
    Task newTask = taskList[index].copyWith(
      isChecked: !taskList[index].isChecked,
    );

    print('newTask : ${newTask.toMap()}');
    // taskList.remove(index);
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
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: const Text('My Tasks'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: taskList.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 20);
        },
        itemBuilder: (context, index) {
          return _buildTaskCard(taskList[index], index);
        },
      ),
    );
  }
}
