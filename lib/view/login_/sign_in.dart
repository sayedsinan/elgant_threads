import 'package:elegant_threads/style/font_style.dart';
import 'package:flutter/material.dart';

Column signIN(MediaQueryData sizeof) {
    return Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign in",
                    style: heading(20),
                  ),
                ],
              ),
            
          
          SizedBox(
            height: sizeof.size.height * 0.02,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi! Welcome back, you've been missed",
                style: normalstyle(15),
              )
            ],
          ),
          SizedBox(height: sizeof.size.height*0.09,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: sizeof.size.width*0.07,),
              Text("Email",style:heading(15) ,)
            ],
          )],
          );
  }