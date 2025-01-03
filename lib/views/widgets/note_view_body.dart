import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/notes_cubit/notes_cubit.dart';

import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
BlocProvider.of<NotesCubit>(context).fetchAllNotes();
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06,),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.08,),
          const CustomAppBar(title: "Notes",icon: Icons.search,),
          const Expanded(child: NoteItemList()),
        ],
      ),
    );
  }
}