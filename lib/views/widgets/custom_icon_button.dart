import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
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