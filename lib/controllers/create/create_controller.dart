import 'package:offline_db_app/controllers/db/offline/cache_keys.dart';
import 'package:offline_db_app/controllers/db/offline/shared_helper.dart';
import 'package:offline_db_app/models/note_model.dart';

class CreateController {
  Future<void> create(NoteModel note) async {
    var newNote = note.toJsonString();

    var list = SharedHelper.prefs.getStringList(CacheKeys.notes.name) ?? [];

    list.add(newNote);

    await SharedHelper.prefs.setStringList(CacheKeys.notes.name, list);
  }
}
