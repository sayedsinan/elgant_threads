import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Credential extends GetxController {
  bool selectedPassword = true;

  Widget togglePasswod() {
    return IconButton(
        onPressed: () {
          selectedPassword = ! selectedPassword;
        },
        icon: selectedPassword
            ? Icon(Icons.visibility)
            : Icon(Icons.visibility_off));
  }

  
}
