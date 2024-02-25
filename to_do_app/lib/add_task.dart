import 'package:flutter/material.dart';
import 'package:to_do_app/task_module.dart';
import 'package:to_do_app/task_list.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final addTaskKey = GlobalKey<FormState>();

  final TitleTextController = TextEditingController();
  final DescriptionTextController = TextEditingController();
  final DateTimeTextController = TextEditingController();

  void Add_Task() {
    String title = TitleTextController.text;
    String description = DescriptionTextController.text;
    String dateTime = DateTimeTextController.text;

    Task add_Tasks = Task(
      title: title,
      description: description,
      dateTime: dateTime,
    );

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            TaskListScreen(addTasks: add_Tasks, add_Tasks: add_Tasks),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text('Add Task'),
      ),
      body: Form(
        key: addTaskKey,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: TitleTextController,
                decoration: InputDecoration(
                  label: Text('Enter the title'),
                  hintText: 'title',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: DescriptionTextController,
                decoration: InputDecoration(
                  label: Text('Enter the description'),
                  hintText: 'Description',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: DateTimeTextController,
                decoration: InputDecoration(
                  label: Text('Enter the date'),
                  hintText: 'Description',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: Add_Task,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.indigo,
                    fixedSize: const Size(500, 50),
                  ),
                  child: const Text(
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      'Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
