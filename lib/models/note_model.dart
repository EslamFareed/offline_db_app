import 'dart:convert';

class NoteModel {
  String? title;
  String? body;
  String? dateTime;
  bool? done;

  NoteModel({this.body, this.dateTime, this.done, this.title});

  String toJsonString() {
    Map<String, dynamic> map = {
      "title": title,
      "body": body,
      "dateTime": dateTime,
      "done": done,
    };

    return jsonEncode(map);
  }

  NoteModel.fromJsonString(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);

    title = map["title"];
    body = map["body"];
    dateTime = map["dateTime"];
    done = map["done"];
  }
}
