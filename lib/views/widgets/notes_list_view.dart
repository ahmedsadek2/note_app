import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

import 'note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notesList= BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: ListView.builder(
              itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(notes: notesList[index],),
              ),
              itemCount: notesList.length,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),


            )
        );
      },
    );
  }
}