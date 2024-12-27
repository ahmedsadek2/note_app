import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
  final NoteModel notes;
 
  @override
  Widget build(BuildContext context) {
    String color = "${notes.color}";

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(int.parse(color)),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(

              title:  Text(notes.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24
                ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Text(notes.subTitle,
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16
                  ),),
              ),
              trailing: IconButton(
                  onPressed: () {
                    notes.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete_rounded, color: Colors.black, size: 34,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Text(notes.date, style: TextStyle(
                color: Colors.black45,
                fontSize: 16,

              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

