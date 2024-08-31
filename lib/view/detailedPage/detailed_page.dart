import 'package:flutter/material.dart';
import '../../widgets/my_text_row.dart';

class Detailed extends StatelessWidget {
  const Detailed({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: sizeof.height * 0.4,
                width: sizeof.width * 1,
                color: Colors.amber,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SafeArea(
                    child: Positioned(
                      top: 20,
                      left: 20,
                      child:  Row(
                        children: [
                          SizedBox(
                            width: sizeof.width * 0.02,
                          ),
                          SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/arrow.png")),
                          SizedBox(
                            width: sizeof.width * 0.27,
                          ),
                          Text("Product Details"),
                          SizedBox(
                            width: sizeof.width * 0.3,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/heart_icon.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: sizeof.height*0.02,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            MyTextRow(fontsize: 16,name: "Female's Style",),
                Row(
                  children: [
                    Icon(Icons.star),
                    Text("4.5")
                  ],
                )
            ],
          ),
          SizedBox(height: sizeof.height*0.02,),
        const   MyTextRow(name: "Light Brown Jacket", fontsize: 20),
          SizedBox(height: sizeof.height*0.03,),
          const MyTextRow(name: "Prodcut Details", fontsize: 18),
          SizedBox(height: sizeof.height*0.02,),
         const  MyTextRow(name: """Lorem Ipsum is simply dummy text of the printing and typesetting industry.
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,""", fontsize: 10),
SizedBox(height: sizeof.height*0.02,),
const Divider(height: 2,color: Colors.grey,),
SizedBox(height: sizeof.height*0.02,),
const MyTextRow(name: "Select Size", fontsize: 16)
        ],
      ),
    );
  }
}
