import 'package:flutter/material.dart';
import 'package:notes/views/widgets/note_view_body.dart';

import 'widgets/add_note_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = "HomeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => const AddNoteBottomSheet(),);
        },
        backgroundColor: const Color(0xff60f0dd),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
        child: const Icon(Icons.add, color: Colors.black,),),
    );
  }
}





