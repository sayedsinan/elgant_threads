import 'package:elegant_threads/controller/login_and_signup.dart';
import 'package:elegant_threads/style/color.dart';
import 'package:elegant_threads/style/font_style.dart';
import 'package:elegant_threads/view/signUp/already.dart';
import 'package:elegant_threads/view/signUp/logo.dart';
import 'package:elegant_threads/view/signUp/signUp_button.dart';
import 'package:elegant_threads/view/signUp/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIN extends StatelessWidget {
  const SignIN({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Credential>();
    var sizeof = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: sizeof.size.height * 0.05,
              ),
              Text(
                "Create Account ",
                style: heading(25),
              ),
              SizedBox(
                height: sizeof.size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Fill your information below or register ",
                    style: normalstyle(15),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "with your social account",
                    style: normalstyle(15),
                  )
                ],
              ),
              SigntextField(sizeof),
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: sizeof.size.width * 0.07,
                  ),
                  Text(
                    "Re-enterPassword",
                    style: heading(15),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: sizeof.size.width * 0.06,
                  right: sizeof.size.width * 0.06,
                ),
                child: TextField(
                  obscureText: controller.selectedPassword,
                  decoration: InputDecoration(
                      labelText: '*******',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25.0)),
                      ),
                      suffixIcon:controller.togglePasswod()),
                ),
              ),
              Row(
                children: <Widget>[
                  new Checkbox(
                    value: true,
                    onChanged: (newValue) {},
                    activeColor: Colors.green,
                  ),
                  Text("I agree"),
                ],
              ),
              signUpButton(sizeof),
              const Divider(),
              lSignogo(sizeof),
              already()
            ],
          ),
        ),
      ),
    );
  }
}
