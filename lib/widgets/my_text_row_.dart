import 'package:flutter/material.dart';



class MyTextRow extends StatelessWidget {
  const MyTextRow(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      this.imagePath,
      this.height,
      this.width,
      });

  final String text;
  final double fontSize;
  final Color color;
  final String? imagePath;
  final double? height;
  final double? width;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text,
           
          ),
        ),
        if (imagePath != null)
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: height,
              width: width,
              child: Image.asset(
                imagePath!,
                fit: BoxFit.cover,
              ),
            ),
          ),
      ],
    );
  }
}
