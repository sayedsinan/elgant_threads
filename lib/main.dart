import 'package:elegant_threads/controller/login_and_signup.dart';
import 'package:elegant_threads/view/login_/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/detailedPage/detailed_page.dart';
import 'view/home/home_page.dart';

void main() {
  runApp(const MyApp());
  Get.put(Credential());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Detailed(),
    );
  }
}
