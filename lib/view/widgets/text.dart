import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Category",
            style: TextStyle(),
          ),
        ),
        SizedBox(
          width: sizeof.size.width * 0.6,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("See all"),
        )
      ],
    );
  }
}
