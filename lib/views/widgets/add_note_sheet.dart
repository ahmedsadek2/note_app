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
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            CustomTextField(name: 'Title',onChanged: (data){},),
            SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
            CustomTextField(
              name: 'Content',
              onChanged: (data){},
               maxLines: 5,
            ),
            SizedBox(height:MediaQuery.of(context).size.height*0.06 ,),
            const CustomButton(),
            SizedBox(height:MediaQuery.of(context).size.height*0.06 ,)
          ],
        ),
      ),
    );
  }
}

