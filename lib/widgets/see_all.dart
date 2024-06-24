import 'package:flutter/material.dart';

class SeeAllText extends StatelessWidget {
  const SeeAllText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Category",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text("See all"),
        )
      ],
    );
  }
}
