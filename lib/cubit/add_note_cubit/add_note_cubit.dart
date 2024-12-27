import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = Color(0xFF005F73);
  addNote(NoteModel note)async{
   note.color =color.value;
    emit(AddNoteLoading());

   try {
     var notesBox = Hive.box<NoteModel>("notes_box");
       await notesBox.add(note);
       emit(AddNoteSuccess());
   } on Exception catch (e) {
    emit(AddNoteFailure("there is an error try again, ${e.toString()}"));
   }
  }

}
