import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteVIewBody extends StatelessWidget {
  const EditNoteVIewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06,),
      child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.08,),
            const CustomAppBar(title: 'Edit Note', icon: Icons.check,),
            SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
            CustomTextField(name: 'Title',onSaved: (data){},),
            SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
            CustomTextField(
              name: 'Content',
              onSaved: (data){},
              maxLines: 5,
            ),
          ]
      ),
    );
  }
}