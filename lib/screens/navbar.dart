import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navbar_Note extends StatelessWidget  {  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notepad'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
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
        body: TabBarView(
          children: [
            Text("data 1"),
            Text("data 2"),
            // displayAllNote(),
            // addNote(),
          ],
        ),
      ),
    );
  }

}