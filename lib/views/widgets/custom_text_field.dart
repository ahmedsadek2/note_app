import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.isObscure = false,
    required this.name,
    super.key,
    required this.onChanged,
    this.padding,
    this.maxLines =1
  });
  final String name;

  final Function(String) onChanged;
  final bool isObscure;
  final EdgeInsetsGeometry? padding;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return TextFormField(
      onChanged: onChanged,
      validator: (data) {
        if (data!.isEmpty) {
          return "this field cant be empty";
        }
        return null;
      },
      obscureText: isObscure,
      maxLines:maxLines ,
      controller: controller,
      style: const TextStyle(color: Colors.white),
      cursorColor: const Color(0xff60f0dd),
      decoration: InputDecoration(
        contentPadding: padding,

        enabledBorder: buildBorder(),
        errorBorder: buildBorder(Colors.red),
        focusedBorder: buildBorder(
          const Color(0xff60f0dd),
        ),
        hintText: name,
        hintStyle: const TextStyle(
          color: Color(0xff60f0dd),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
