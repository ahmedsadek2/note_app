import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:30,left:12,right: 12),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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

