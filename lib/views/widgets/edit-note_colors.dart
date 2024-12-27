import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';

import 'color_list_view.dart';

class EditNoteColors extends StatefulWidget {
  const EditNoteColors({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColors> createState() => _EditNoteColorsState();
}

class _EditNoteColorsState extends State<EditNoteColors> {
 late int currentIndex;
  final List<Color> colorsList = const[

    Color(0xFF005F73), // #005F73
    Color(0xFF0A9396), // #0A9396
    Color(0xFF94D2BD),
    Color(0xFFCCD5AE), // #001219
    Color(0xFFE9D8A6), // #E9D8A6
    Color(0xFFD4A373),
    Color(0xFFEE9B00), // #EE9B00
    Color(0xFFCA6702), // #CA6702
    Color(0xFFBB3E03), // #BB3E03
    Color(0xFFAE2012), // #AE2012
    Color(0xFF9B2226), // #9B2226
    Color(0xFF81B29A),
    Color(0xFF5F6366),
  ];
  @override
  void initState() {
    currentIndex = colorsList.indexOf(Color(widget.note.color));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
            child: GestureDetector(
                onTap: (){
                  currentIndex =index;
                  widget.note.color =colorsList[index].value;
                  setState(() {
                    
                  });
                },
                child: ColorItem(color: colorsList[index],
                  isActive: currentIndex==index,)
            ),
          );
        },),
    );
  }
}
