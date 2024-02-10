import 'package:flutter/material.dart';
import 'package:notes_app/UserModel.dart';
import 'package:notes_app/NotesScreen.dart';

class NotesApp extends StatefulWidget {
  const NotesApp({super.key});

  @override
  State<NotesApp> createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  final notesFormKey = GlobalKey<FormState>();

  final TitleTextController = TextEditingController();
  final DescriptionTextController = TextEditingController();

  void usernotes() {
    String title = TitleTextController.text;
    String description = DescriptionTextController.text;

    User userNotes = User(
      title: title,
      description: description,
    );

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => NotesScreen(userNotes: userNotes),
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
        title: const Text('Notes App'),
      ),
      body: Form(
        key: notesFormKey,
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
              ElevatedButton(
                  onPressed: usernotes,
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
