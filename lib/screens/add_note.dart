import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController addNoteTitle = TextEditingController();
    TextEditingController addNewNote = TextEditingController();

    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: addNoteTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Note Title',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: addNewNote,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Add Note',
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}