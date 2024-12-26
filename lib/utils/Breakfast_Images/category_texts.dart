import 'package:breakfast_page/utils/constants.dart';
import 'package:flutter/material.dart';


class Category_Text extends StatelessWidget {
  const Category_Text({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.RedPinkMain,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}