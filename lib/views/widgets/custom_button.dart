import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
      style:ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(Color(0xff60f0dd)),
          fixedSize: WidgetStatePropertyAll(
              Size(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height*0.05)
          ),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height*0.012)))
      ),
      child: const Text("Add",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),);
  }
}