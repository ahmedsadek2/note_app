import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    this.isLoading =false
  });
 final void Function()? onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height*0.05,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height*0.012),
            color: Color(0xff60f0dd),
          ),
          child: isLoading? Center(child: CircularProgressIndicator(
            color: Colors.black,
          )): Center(child: Text("Add",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18),))
        ),
      );
    }
}



// ElevatedButton(
// onPressed: onTap,
// style:ButtonStyle(
// backgroundColor: const WidgetStatePropertyAll(Color(0xff60f0dd)),
// fixedSize: WidgetStatePropertyAll(
// Size(MediaQuery.of(context).size.width,
// MediaQuery.of(context).size.height*0.05)
// ),
// shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height*0.012)))
// ),
// child: const Text("Add",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),);
//