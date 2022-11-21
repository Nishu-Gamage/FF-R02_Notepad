import 'package:flutter/material.dart';

class AddNewNote extends StatefulWidget {
  const AddNewNote({Key? key}) : super(key: key);

  @override
  State<AddNewNote> createState() => _AddNewNoteForm();
}

class _AddNewNoteForm extends State<AddNewNote> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _noteTitle = '';
  String _addNote = '';

  Widget _buildNoteTitleField() {
    return TextFormField(
        maxLength: 20,
        decoration: const InputDecoration(hintText: 'Note Title'),
        validator: (textFieldValue) {
          if (textFieldValue!.isEmpty) {
            return "Note Title can't be empty";
          }
          return null;
        },
        onSaved: (textFieldValue) {
          _noteTitle = textFieldValue!;
        });
  }

  Widget _buildAddNoteField() {
    return TextFormField(
        maxLength: 20,
        decoration: const InputDecoration(hintText: 'Add Note'),
        validator: (textFieldValue) {
          if (textFieldValue!.isEmpty) {
            return "Add Note can't be empty";
          }
          return null;
        },
        onSaved: (textFieldValue) {
          _addNote = textFieldValue!;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                _buildNoteTitleField(),
                _buildAddNoteField(),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: ElevatedButton(
                      child: Text(
                        'Save Note',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                          print(_noteTitle);
                          print(_addNote);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => DisplayNotes()));
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}