import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/views/edit_view.dart';
import 'package:notes/views/home_view.dart';

import 'models/note_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModelAdapter>("notes_box");
  runApp(
      MaterialApp(

    routes: {
      HomeView.id: (context) => const HomeView(),
      EditView.id: (context) => const EditView()
    },
    theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
    initialRoute: HomeView.id,
  ));
}
