import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:30,left:12,right: 12),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          CustomTextField(name: 'Title',onChanged: (data){},),
          SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
          CustomTextField(
            name: 'Content',
            onChanged: (data){},
            padding:  EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height*0.08,
                horizontal: MediaQuery.of(context).size.width*0.03),),
           const Spacer(),
          ElevatedButton(onPressed: (){},
            style:ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(Color(0xff60f0dd)),
               fixedSize: WidgetStatePropertyAll(
                   Size(MediaQuery.of(context).size.width,
                   MediaQuery.of(context).size.height*0.05)
               ),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height*0.012)))
            ),
            child: const Text("Add",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),),
           SizedBox(height:MediaQuery.of(context).size.height*0.06 ,)
        ],
      ),
    );
  }
}