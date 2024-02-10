import 'package:flutter/material.dart';
import 'package:notes_app/UserModel.dart';

class NotesScreen extends StatefulWidget {
  final User userNotes;

  const NotesScreen({super.key, required this.userNotes});

  // get userNotes => null;

  @override
  State<NotesScreen> createState() => _NotesScreemState();
}

class _NotesScreemState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text('Notes'),
      ),
      body: Card(
        margin: const EdgeInsets.all(16),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Title: ${widget.userNotes.title}'),
              Text('Description: ${widget.userNotes.description}'),
            ],
          ),
        ),
      ),
    );
  }
}
