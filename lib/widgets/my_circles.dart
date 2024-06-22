import 'package:flutter/material.dart';

class MyCircles extends StatelessWidget {
  const MyCircles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio:1, // Aspect ratio of your container
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          height: size.height * 0.09,
          width: size.width * 0.18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black,
          ),
        );
      },
    );
  }
}
