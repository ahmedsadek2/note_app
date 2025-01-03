import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';
import 'edit-note_colors.dart';

class EditNoteVIewBody extends StatefulWidget {
  const EditNoteVIewBody({
    super.key, required this.note,
  });
 final NoteModel note;

  @override
  State<EditNoteVIewBody> createState() => _EditNoteVIewBodyState();
}

class _EditNoteVIewBodyState extends State<EditNoteVIewBody> {
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06,),
      child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.08,),
             CustomAppBar(
               title: 'Edit Note',
               icon: Icons.check,
               onTap: (){
                   widget.note.title = title ??  widget.note.title;
                   widget.note.subTitle = subTitle ??  widget.note.subTitle;
                   widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                 Navigator.pop(context);
               },
             ),
            SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
            CustomTextField(name: widget.note.title,
              onChange: (data){
              title = data ??  widget.note.title;
            },),
            SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
            CustomTextField(
              name: widget.note.subTitle,
              onChange: (data){
              subTitle = data ??  widget.note.subTitle;
              },
              maxLines: 5,
            ),
            SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
            EditNoteColors(note: widget.note,)
          ]
      ),
    );
  }
}