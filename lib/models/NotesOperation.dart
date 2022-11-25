import 'package:flutter/cupertino.dart';
import 'package:notepad/models/Note.dart';

class NotesOperationModel extends ChangeNotifier {
  final List<NoteModel> _notes = <NoteModel>[];

  List<NoteModel> get getNotes {
    return _notes;
  }

  NotesOperationModel() {
    addNewNote('First Note', 'first note description');
  }

  void addNewNote(String title, String description) {
    NoteModel note = NoteModel(title, description);
    _notes.add(note);
    notifyListeners();
  }
}