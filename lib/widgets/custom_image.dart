// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.backColor,
    required this.imagePath,
  });
  final Color backColor;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0, 0.5),
            child: Container(
              height: 190,
              width: 320,
              decoration: BoxDecoration(
                color: backColor,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),

          Align(
            alignment: Alignment(0, 0),
            child: Image.asset(imagePath, height: 320, width: 320),
          )
        ],
      ),
    );
  }
}
