import 'package:flutter/material.dart';
import 'package:listen2re/constants/text_helper.dart';
import 'package:sizer/sizer.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  final double width;
  final double height;
  final double radius;

  const CardWidget({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.width,
    required this.height, required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(right: 2.w),
      child: Column(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(
                color: Colors.white,
                width: 4, // Set border width
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: width,
                height: height,
              ),
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextHelper.h10.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
