import 'package:flutter/material.dart';
import 'package:notes/views/edit_view.dart';
import 'package:notes/views/home_view.dart';

void main() {
  runApp(MaterialApp(
    routes:{
      HomeView.id:(context)=> const HomeView(),
      EditView.id:(context)=> const EditView()
    } ,
    theme: ThemeData(brightness: Brightness.dark, fontFamily :"Poppins"),

    initialRoute: HomeView.id,
  ));
}
