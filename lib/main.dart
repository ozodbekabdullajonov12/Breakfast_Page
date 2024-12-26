import 'package:breakfast_page/utils/Breakfast_Images/breakfast_main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Breakfast_Page());
}

class Breakfast_Page extends StatelessWidget {
  const Breakfast_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Breakfast_Main_Page(),
    );
  }
}
