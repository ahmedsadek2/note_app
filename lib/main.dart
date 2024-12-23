import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/home_view.dart';

import 'models/note_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModelAdapter>("notes_box");
  runApp(
    const NotesApp()
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create: (context)=> AddNoteCubit())
        ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
          home:HomeView(),
        ),
    )
    ;
  }
}
