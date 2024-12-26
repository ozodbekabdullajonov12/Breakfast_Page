import 'package:breakfast_page/utils/Breakfast_Images/category_texts.dart';
import 'package:breakfast_page/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(90.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 130,
      backgroundColor: AppColors.BackgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: SvgPicture.asset(
                    "assets/svg/vector.svg",
                    color: AppColors.RedPinkMain,
                  ),
                ),
                Text(
                  "Breakfast",
                  style: TextStyle(
                    color: AppColors.RedPinkMain,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          color: Color(0xFFEC888D),
                          borderRadius: BorderRadius.circular(14)),
                      child: SvgPicture.asset(
                        "assets/svg/notification.svg",
                        color: Colors.pink,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          color: Color(0xFFEC888D),
                          borderRadius: BorderRadius.circular(14)),
                      child: SvgPicture.asset(
                        "assets/svg/search.svg",
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal, // Set to horizontal
                children: [
                  Padding(
                      padding: const EdgeInsets.all( 8.0),
                      child: Category_Text(text: "Breakfast")
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Category_Text(text: "Lunch"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Category_Text(text: "Dinner"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Category_Text(text: "Vegan"),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Category_Text(text: "Dessert")
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Category_Text(text: "Drinks")
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Category_Text(text: "Seafood"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}