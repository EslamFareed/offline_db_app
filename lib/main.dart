import 'package:flutter/material.dart';
import 'package:offline_db_app/controllers/db/offline/shared_helper.dart';

import 'views/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.amberAccent,
              centerTitle: true,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              )),
              titleTextStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))),
      home: HomeScreen(),
    );
  }
}

//! Notes App 

//! Home ( View All Notes + Add New Note )

//! ViewAllNotes ( Checkbox (this note is completed) )

//! Add New Note ( title + body + DateTime.now() )

//! Shared Pref

//! Map => json => String (Save as String)
//! String => json => Map (Get as List<Map>)

