import 'package:flutter/material.dart';
import 'package:offline_db_app/controllers/view_all/view_all_controller.dart';

class ViewAllNotesScreen extends StatefulWidget {
  ViewAllNotesScreen({super.key});

  @override
  State<ViewAllNotesScreen> createState() => _ViewAllNotesScreenState();
}

class _ViewAllNotesScreenState extends State<ViewAllNotesScreen> {
  ViewAllController controller = ViewAllController();

  @override
  void initState() {
    controller.getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = controller.notes[index];
          return Card(
            child: ListTile(
              title: Text(item.title!),
              subtitle: Text("${item.dateTime} \n ${item.body}"),
              trailing: Checkbox(
                value: item.done,
                onChanged: (value) async {
                  await controller.editDone(index, value!);
                  setState(() {
                    item.done = value;
                  });
                },
              ),
            ),
          );
        },
        itemCount: controller.notes.length,
      ),
    );
  }
}


//! List
//! get Item
//! 