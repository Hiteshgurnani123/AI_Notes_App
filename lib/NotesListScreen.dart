import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NotesListScreen extends StatefulWidget {
  const NotesListScreen({Key? key}) : super(key: key);

  @override
  State<NotesListScreen> createState() => NotesListScreenState();
}

class NotesListScreenState extends State<NotesListScreen> {
  List<String> notes = [
    "Flutter Is Awesome",
    "AI Can Summerize Text",
    "Voice Notes Are Cool!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Notes"),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notes[index]),
            onTap: () {
              // open edit Screen
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: Navigate to add note screen
          //
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
