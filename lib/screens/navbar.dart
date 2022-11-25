import 'package:flutter/material.dart';
import 'add_note.dart';
import 'display_notes.dart';

class NavbarNote extends StatelessWidget {
  const NavbarNote({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notepad'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            )
          ],
          flexibleSpace: Image.asset(
            "assets/AppBar-Background.jpg",
            fit: BoxFit.cover,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.note),
                text: 'All Notes',
              ),
              Tab(
                icon: Icon(Icons.add),
                text: 'Add Notes',
              ),
            ],
          ),
          elevation: 5.0,
        ),
        body: const TabBarView(
          children: [
            DisplayNotes(),
            AddNewNote(),
          ],
        ),
      ),
    );
  }
}