import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:notepad/screens/navbar.dart';
import 'package:provider/provider.dart';
import 'models/NotesOperation.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyNoteApp(), // Wrap your app
      ),
    );

class MyNoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperationModel>(
      create: (context) => NotesOperationModel(),
      child: MaterialApp(
        home: Navbar_Note(),
      ),
    );
  }
}