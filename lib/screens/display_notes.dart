import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        ListTile(
          leading: Icon(Icons.star),
          title: Text('New Note Title'),
          subtitle: Text("New Note Body"),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.star),
          // leading: Icon(Icons.settings),
          title: Text('Note 2'),
          subtitle: Text("sub note"),
          onTap: () {},
        ),
      ],
    ),
  );
  }
}