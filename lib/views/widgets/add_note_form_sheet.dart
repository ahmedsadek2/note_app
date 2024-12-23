import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          CustomTextField(name: 'Title',onSaved: (data){
            title =data;
          },),
          SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
          CustomTextField(
            name: 'Content',
            onSaved: (data){
              subTitle = data;
            },
            maxLines: 5,
          ),
          SizedBox(height:MediaQuery.of(context).size.height*0.06 ,),
          CustomButton(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
              var note = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now.toString(),
                  color: Colors.cyan.r.toInt()
              );
              BlocProvider.of<AddNoteCubit>(context).addNote(note);
            }else{
              autoValidateMode = AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          SizedBox(height:MediaQuery.of(context).size.height*0.06 ,)
        ],
      ),
    );
  }
}

