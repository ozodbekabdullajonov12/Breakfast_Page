import 'package:breakfast_page/utils/Breakfast_Images/breakfast_images.dart';
import 'package:breakfast_page/utils/Breakfast_Images/custom_appbar.dart';
import 'package:breakfast_page/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Breakfast_Main_Page extends StatelessWidget {
  const Breakfast_Main_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.BackgroundColor,
      appBar: CustomAppBar(),
      body: ListView(
        padding: EdgeInsets.only(bottom: 130),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Breakfast_Images(
                image: AssetImage("assets/breakfast/eggs_benedict.png"),
                duration: "15",
                description: "Muffin with Canadian bacon",
                mark: "5",
                name: "Eggs Benedict",
              ),
              Breakfast_Images(
                image: AssetImage("assets/breakfast/french_toast.png"),
                duration: '20',
                description: "Delicious slices of     bread",
                mark: "5",
                name: "French Toast",
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Breakfast_Images(
                image: AssetImage("assets/breakfast/oatmeal_and_nut.png"),
                duration: "35",
                description: "Wholesome blend for breakfast",
                mark: '4',
                name: "Oatmeal and Nut",
              ),
              Breakfast_Images(
                image: AssetImage("assets/breakfast/still_life_potato.png"),
                duration: "30",
                description: 'Earthy, Textured, Rustic charm',
                mark: '4',
                name: "Still life Potato",
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Breakfast_Images(
                image: AssetImage("assets/breakfast/oatmeal_granola.png"),
                duration: '30',
                description: 'Strawberries and Blueberries',
                mark: '4',
                name: "Oatmeal Granola",
              ),
              Breakfast_Images(
                image: AssetImage("assets/breakfast/sunny_bruschetta.png"),
                duration: '30',
                description: "With Cream Cheese",
                mark: '4',
                name: "Sunny Bruschetta",
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Breakfast_Images(
                image: AssetImage("assets/breakfast/omelette_cheese.png"),
                duration: '30',
                description: "Fresh Parsley",
                mark: '4',
                name: "Omelette Cheese",
              ),
              Breakfast_Images(
                image: AssetImage("assets/breakfast/tofu_sandwich.png"),
                duration: '30',
                description: 'Microgreens',
                mark: '4',
                name: "Tofu Sandwich",
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.RedPinkMain,
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/svg/home.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "assets/svg/community.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "assets/svg/categories.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "assets/svg/profile.svg",
                width: 25,
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}