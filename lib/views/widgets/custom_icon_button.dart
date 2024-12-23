import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){},
      child: Container(
        height: MediaQuery.of(context).size.height*0.045,
        width: MediaQuery.of(context).size.width*0.11,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white54,
        ),
        child:  Icon(icon,size: 24,),
      ),
    );
  }
}