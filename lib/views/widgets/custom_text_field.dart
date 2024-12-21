import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.isObscure = false,
    required this.name,
    super.key,
    required this.onChanged,
    this.padding,
  });
  final String name;

  final Function(String) onChanged;
  final bool isObscure;
 final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
     TextEditingController controller=TextEditingController();
    return TextFormField(
      onChanged: onChanged,
      validator: (data) {
        if (data!.isEmpty) {
          return "this field cant be empty";
        }
        return null;
      },
      obscureText: isObscure,
      controller: controller,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(

        contentPadding: padding,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white)),
          hintText: name,
          hintStyle: const TextStyle(color: Color(0xff60f0dd))),
    );
  }
}
