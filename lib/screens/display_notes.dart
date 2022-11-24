import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/Note.dart';
import '../models/NotesOperation.dart';

class DisplayNotes extends StatelessWidget {
  const DisplayNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NotesOperationModel>(
          builder: (context, NotesOperationModel modelData, child) {
        return ListView.builder(
            itemCount: modelData.getNotes.length,
            itemBuilder: (context, index) {
              return NotesCard(modelData.getNotes[index]);
            });
      }),
    );
  }
}

class NotesCard extends StatelessWidget {
  final NoteModel note;

  const NotesCard(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          leading: Icon(Icons.star),
          title: Text(note.noteTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text(note.noteDescription, style: TextStyle(fontSize: 18)),
        ),
        const Divider(),
      ]),
    );
  }
}