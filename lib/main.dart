import 'package:flutter/material.dart';
import 'package:notes/views/home_view.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(brightness: Brightness.dark),
    home: const HomeView(),
  ));
}
