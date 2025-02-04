import 'package:ai_notes/AddEditNoteScreen.dart';
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
        backgroundColor: Colors.blueAccent,
        title: Text("My Notes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(
                  notes[index],
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle:
                    Text("Tap To Edit", style: TextStyle(color: Colors.grey)),
                leading: Icon(
                  Icons.note,
                  color: Colors.blueAccent,
                ),
                trailing: Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                ),
                onTap: () {
                  // open edit Screen
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: Navigate to add note screen

          Navigator.push(context, SlidePageRoute(page: AddEditNoteScreen()));
        },
        backgroundColor: Colors.blueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

// Slide Transition;

class SlidePageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;
  SlidePageRoute({required this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
                        .animate(animation),
                child: child,
              );
            });
}
