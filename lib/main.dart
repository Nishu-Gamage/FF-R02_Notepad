import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyNoteApp(), // Wrap your app
  ),
);


class MyNoteApp extends StatelessWidget {
  const MyNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FF R-02 Notepad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Notepad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title,});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(          
          title: Text(widget.title),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.more_horiz),
            )
          ],
          flexibleSpace: Image.asset(
            "assets/AppBar-Background.jpg", 
            fit:BoxFit.cover,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.note), text: 'All Notes',),
              Tab(icon: Icon(Icons.add), text: 'Add Notes',),
            ],
          ),
          ),        
      ),
    );
  }
}
