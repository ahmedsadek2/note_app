import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06,),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.08,),
          const CustomAppBar(),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          const NoteItem(),
        ],
      ),
    );
  }
}