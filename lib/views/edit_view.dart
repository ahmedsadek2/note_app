import 'package:flutter/material.dart';
import 'package:notes/views/widgets/edit_note_view_body.dart';



class EditView extends StatelessWidget {
  const EditView({super.key});
 static String id = "EditView";
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
       body: EditNoteVIewBody()
    );
  }
}


