import 'package:ai_notes/AddEditNoteScreen.dart';
import 'package:ai_notes/LoginScreen.dart';
import 'package:ai_notes/profileScreen.dart';
import 'package:flutter/material.dart';
import 'NotesListScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
