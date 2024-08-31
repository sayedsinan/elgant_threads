import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/font_style.dart';

class MyTextRow extends StatelessWidget {
  const MyTextRow({super.key, required this.name, required this.fontsize});
  final String name;
  final double fontsize;
  

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: sizeof.width * 0.02,
        ),
        Text(
          name,
          
          style: heading(fontsize),
        )
      ],
    );
  }
}
