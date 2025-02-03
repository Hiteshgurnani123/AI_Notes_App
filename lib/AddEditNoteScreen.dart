import 'package:flutter/material.dart';

class AddEditNoteScreen extends StatefulWidget {
  const AddEditNoteScreen({Key? key}) : super(key: key);

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "New Note",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            maxLines: 10,
            decoration: InputDecoration(
              hintText: "Write Your Note Here...",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //TODO: save note to firebase;
          },
          child: Icon(Icons.save),
        ));
  }
}
