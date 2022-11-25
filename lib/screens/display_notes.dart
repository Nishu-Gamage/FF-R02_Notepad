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

  const NotesCard(this.note, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ListTile(
        leading: const Icon(Icons.star),
        title: Text(note.noteTitle,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(note.noteDescription, style: const TextStyle(fontSize: 18)),
      ),
      const Divider(),
    ]);
  }
}