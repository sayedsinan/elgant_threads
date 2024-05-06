import 'package:elegant_threads/view/login_/button.dart';
import 'package:elegant_threads/view/login_/logo.dart';
import 'package:elegant_threads/view/login_/sign_in.dart';
import 'package:elegant_threads/view/login_/sign_up_text.dart';
import 'package:elegant_threads/view/login_/text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: sizeof.size.height * 0.1,
            ),
            signIN(sizeof),
            textField(sizeof),
            signinButton(sizeof),
            SizedBox(
              height: sizeof.size.height * 0.05,
            ),
            const Divider(),
            SizedBox(
              height: sizeof.size.height * 0.02,
            ),
            logo(sizeof),
              SizedBox(
              height: sizeof.size.height * 0.02,
            ),
            singUp_text()
          ],
        ),
      ),
    );
  }

 
}
