import 'package:offline_db_app/models/note_model.dart';

import '../db/offline/cache_keys.dart';
import '../db/offline/shared_helper.dart';

class ViewAllController {
  List<NoteModel> notes = [];

  void getAll() {
    var list = SharedHelper.prefs.getStringList(CacheKeys.notes.name) ?? [];

    notes = list.map((e) => NoteModel.fromJsonString(e)).toList();
  }

  Future<void> editDone(int index, bool val) async {
    notes[index].done = val;
    var list = notes.map((e) => e.toJsonString()).toList();

    await SharedHelper.prefs.setStringList(CacheKeys.notes.name, list);
  }
}
