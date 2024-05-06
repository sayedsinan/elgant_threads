import 'package:elegant_threads/style/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle normalstyle(double fontsize) {
  return GoogleFonts.aBeeZee(
    fontSize: fontsize,
    color: grey,
  );
}

TextStyle heading(double fontsize) {
  return GoogleFonts.aBeeZee(
    fontSize: fontsize,
    color: black,
    fontWeight: FontWeight.bold,
  );
}

TextStyle forgotStyle(double fontsize) {
  return GoogleFonts.aBeeZee(
    fontSize: fontsize,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    color: brown,
  );
}

TextStyle buttonStyle(double fontsize) {
  return GoogleFonts.aBeeZee(
    fontSize: fontsize,
    fontWeight: FontWeight.bold,
    color: white,
  );
}
