import 'package:flutter/material.dart';
import 'package:offline_db_app/views/create/create_note_screen.dart';
import 'package:offline_db_app/views/view_all/view_all_notes_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateNoteScreen(),
                    ));
              },
              child: const Text("Create New Note"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewAllNotesScreen(),
                    ));
              },
              child: const Text("View Notes"),
            ),
          ],
        ),
      ),
    );
  }
}
