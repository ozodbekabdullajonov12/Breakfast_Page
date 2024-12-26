import 'package:breakfast_page/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Breakfast_Images extends StatelessWidget {
  const Breakfast_Images({
    super.key,
    required this.image,
    required this.duration,
    required this.description,
    required this.mark,
    required this.name,
  });

  final ImageProvider image;
  final String name, description, duration, mark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 145,
              left: 5,
              right: 5,
              child: Container(
                width: 160,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  border: Border.all(color: AppColors.pinkSub, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.TextColor),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          color: AppColors.TextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                mark,
                                style: TextStyle(
                                  color: AppColors.pinkSub,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                "assets/svg/star.svg",
                                color: AppColors.pinkSub,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/clock.svg",
                                color: AppColors.pinkSub,
                              ),
                              Text(
                                '$duration min',
                                style: TextStyle(
                                  color: AppColors.pinkSub,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 169,
              height: 153,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}