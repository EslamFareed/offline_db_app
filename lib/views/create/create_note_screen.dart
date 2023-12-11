import 'package:flutter/material.dart';
import 'package:offline_db_app/controllers/create/create_controller.dart';
import 'package:offline_db_app/models/note_model.dart';

class CreateNoteScreen extends StatelessWidget {
  CreateNoteScreen({super.key});

  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  final CreateController controller = CreateController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Note"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: bodyController,
              minLines: 5,
              maxLines: 10,
              decoration: InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await controller.create(NoteModel(
                  body: bodyController.text,
                  title: titleController.text,
                  dateTime: DateTime.now().toString(),
                  done: false,
                ));

                titleController.clear();
                bodyController.clear();
              },
              child: const Text("Save Note"),
            )
          ],
        ),
      ),
    );
  }
}
