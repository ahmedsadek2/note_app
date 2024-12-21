import 'package:flutter/material.dart';
import 'package:notes/views/widgets/note_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: NotesViewBody(),
    );
  }
}




