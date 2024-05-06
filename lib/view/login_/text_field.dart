import 'package:elegant_threads/style/color.dart';
import 'package:elegant_threads/style/font_style.dart';
import 'package:flutter/material.dart';

Column textField(MediaQueryData sizeof) {
    return Column(
            children: [
              SizedBox(height: sizeof.size.height * 0.02),
              Padding(
                padding: EdgeInsets.only(
                  left: sizeof.size.width * 0.06,
                  right: sizeof.size.width * 0.06,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'example@gmail.com',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: black),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizeof.size.height * 0.02,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: sizeof.size.width * 0.07,
                  ),
                  Text(
                    "Password",
                    style: heading(15),
                  )
                ],
              ),
              SizedBox(
                height: sizeof.size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: sizeof.size.width * 0.06,
                  right: sizeof.size.width * 0.06,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: '......',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25.0)),
                      ),
                      suffixIcon:const  Icon(Icons.visibility_off)),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: sizeof.size.width*0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: forgotStyle(15),
                        ))
                  ],
                ),
              )
            ],
          );
  }