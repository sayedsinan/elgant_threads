import 'package:elegant_threads/controller/login_and_signup.dart';
import 'package:elegant_threads/style/color.dart';
import 'package:elegant_threads/style/font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Padding signinButton(MediaQueryData sizeof) {
  final controller = Get.find<Credential>();
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      onPressed: () {
        controller.createUser();
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
