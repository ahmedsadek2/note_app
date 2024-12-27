import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';

import 'color_list_view.dart';
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
           ColorListView(),
          SizedBox(height:MediaQuery.of(context).size.height*0.06 ,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return buildCustomButton(state, context);
  },
),
          SizedBox(height:MediaQuery.of(context).size.height*0.07 ,)
        ],
      ),
    );
  }

  CustomButton buildCustomButton(AddNoteState state, BuildContext context) {
    return CustomButton(
          isLoading:state is AddNoteLoading ? true :false,
          onTap: (){
          if(formKey.currentState!.validate()){
            formKey.currentState!.save();
             var currentDate = DateTime.now();
             var formattedCurrentDate = DateFormat.yMd().format(currentDate);
            var note = NoteModel(
                title: title!,
                subTitle: subTitle!,
                date: formattedCurrentDate,
                color: Colors.cyan.value
            );

            BlocProvider.of<AddNoteCubit>(context).addNote(note);
          }else{
            autoValidateMode = AutovalidateMode.always;
            setState(() {
            });
          }
        },);
  }
}

