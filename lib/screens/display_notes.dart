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
          leading: Icon(Icons.brightness_auto),
          title: Text('aaaaa'),
          subtitle: Text("bbbbb"),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Note 2'),
          subtitle: Text("sub note"),
          onTap: () {},
        ),
      ],
    ),
  );
  }
}