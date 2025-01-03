import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      radius: MediaQuery.of(context).size.height*0.03,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: color,
        radius: MediaQuery.of(context).size.height*0.0275,
      ),
    ): CircleAvatar(
      backgroundColor:color,
      radius: MediaQuery.of(context).size.height*0.03,
    );
  }
}
class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex =0;
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
                  BlocProvider.of<AddNoteCubit>(context).color = colorsList[index];
                  setState(() {});
                },
                child: ColorItem(color: colorsList[index],
                  isActive: currentIndex==index,)
            ),
          );
        },),
    );
  }
}
