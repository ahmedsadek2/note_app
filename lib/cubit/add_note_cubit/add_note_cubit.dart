import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)async{
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
