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
            const CustomAppBar(title: 'Edit Note', icon: Icon(Icons.check,size: 24,),),
            SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
            CustomTextField(name: 'Title',onChanged: (data){},),
            SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
            CustomTextField(
              name: 'Content',
              onChanged: (data){},
              maxLines: 5,
            ),
          ]
      ),
    );
  }
}