import 'package:flutter/cupertino.dart';
import 'package:notepad/models/Note.dart';
import 'package:notepad/screens/add_note.dart';

class NotesOperationModel extends ChangeNotifier {

  List<NoteModel> _notes = <NoteModel>[];

  addNewNote(String title, String description){
    NoteModel note = NoteModel(title, description);
    print(title);
    print(description);
    
  }
}