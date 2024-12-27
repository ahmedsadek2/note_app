import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/edit_note_view_body.dart';



class EditView extends StatelessWidget {
  const EditView({super.key, required this.note});
  final NoteModel note;
 static String id = "EditView";
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
       body: EditNoteVIewBody(note:note)
    );
  }
}


