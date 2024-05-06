import 'package:elegant_threads/style/font_style.dart';
import 'package:elegant_threads/view/signUp/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



Row singUp_text() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Don't have an account ?",
        style: normalstyle(15),
      ),
      GestureDetector(
        onTap: (){
       Get.to(()=>SignIN());
        },
        child: Text(
          "Sign Up",
          style: forgotStyle(15),
        ),
      )
    ],
  );
}
