import 'package:elegant_threads/style/font_style.dart';
import 'package:elegant_threads/view/login_/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



Row already() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Already have an Account?",
        style: normalstyle(15),
      ),
      GestureDetector(
        onTap: (){
       Get.to(()=>const SignUp());
        },
        child: Text(
          "Sign IN",
          style: forgotStyle(15),
        ),
      )
    ],
  );
}
