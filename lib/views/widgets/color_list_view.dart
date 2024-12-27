import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: Colors.cyan,
      radius: MediaQuery.of(context).size.height*0.03,
    );
  }
}
class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {

    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
            child: ColorItem(),
          );
        },),
    );
  }
}
