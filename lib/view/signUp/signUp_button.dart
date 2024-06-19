import 'package:elegant_threads/style/color.dart';
import 'package:elegant_threads/style/font_style.dart';
import 'package:elegant_threads/view/navbar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Padding signUpButton(MediaQueryData sizeof) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      onPressed: () {
        Get.to(() => const navPage());
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(brown),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        minimumSize: MaterialStateProperty.all(
          Size(sizeof.size.height * 0.52, sizeof.size.width * 0.14),
        ),
      ),
      child: Text(
        "Sign In",
        style: buttonStyle(20),
      ),
    ),
  );
}
