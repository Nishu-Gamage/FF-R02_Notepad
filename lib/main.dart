import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:notepad/models/Note.dart';
import 'package:notepad/screens/navbar.dart';
import 'package:provider/provider.dart';
import 'models/NotesOperation.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyNoteApp(), // Wrap your app
      ),
    );

class MyNoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperationModel>(
      create: (context) => NotesOperationModel(),
      child: MaterialApp(
        home: Navbar_Note(),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//     required this.title,
//   });

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.search),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.more_horiz),
//             )
//           ],
//           flexibleSpace: Image.asset(
//             "assets/AppBar-Background.jpg",
//             fit: BoxFit.cover,
//           ),
//           bottom: const TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.note),
//                 text: 'All Notes',
//               ),
//               Tab(
//                 icon: Icon(Icons.add),
//                 text: 'Add Notes',
//               ),
//             ],
//           ),
//           elevation: 5.0,
//         ),
//         body: TabBarView(
//           children: [
//             displayAllNote(),
//             addNote(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget addNote() {
//   TextEditingController addNoteTitle = TextEditingController();
//   TextEditingController addNewNote = TextEditingController();

//   return Container(
//     child: ListView(
//       scrollDirection: Axis.vertical,
//       children: [
//         Container(
//           alignment: Alignment.center,
//           padding: EdgeInsets.all(10),
//           margin: const EdgeInsets.only(top: 10),
//           child: Text(
//             'Add New Note',
//             style: TextStyle(
//                 color: Colors.red, fontWeight: FontWeight.w500, fontSize: 25),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(top: 50),
//           padding: EdgeInsets.all(10),
//           child: TextField(
//             controller: addNoteTitle,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Note Title',
//             ),
//           ),
//         ),
//         Container(           
//           margin: EdgeInsets.only(top: 20),
//           padding: EdgeInsets.all(10),
//           child: TextField(
//             controller: addNewNote,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Add Note',
//             ),
//           ),
//         ),
//         Container(
//           height: 50,
//           // padding: EdgeInsets.all(10),
//           margin: EdgeInsets.only(top: 20),
//           padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//           child: ElevatedButton(
//               child: Text('Submit'), 
//               onPressed: () {},
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget displayAllNote() {
//   return Container(
//     child: ListView(
//       scrollDirection: Axis.vertical,
//       children: [
//         ListTile(
//           leading: Icon(Icons.brightness_auto),
//           title: Text('For the Future'),
//           subtitle: Text("This is total oa system team r-02 ff project. we are trying to buld note pad using flutter"),
//           // trailing: Icon(Icons.menu),
//           onTap: () {},
//         ),
//         Divider(),
//         ListTile(
//           leading: Icon(Icons.settings),
//           title: Text('Note 2'),
//           subtitle: Text("sub note"),
//           // trailing: Icon(Icons.menu),
//           onTap: () {},
//         ),
//       ],
//     ),
//   );
// }
