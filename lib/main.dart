import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:notepad/screens/navbar.dart';
import 'package:provider/provider.dart';
import 'models/NotesOperation.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => const MyNoteApp(), // Wrap your app
      ),
    );

class MyNoteApp extends StatelessWidget {
  const MyNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperationModel>(
      create: (context) => NotesOperationModel(),
      child: const MaterialApp(
        home: NavbarNote(),
      ),
    );
  }
}