import 'package:elegant_threads/view/widgets/options.dart';
import 'package:flutter/material.dart';

class CoustemerSelection extends StatelessWidget {
  const CoustemerSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildButton("All", false),
          buildButton("Newest", true),
          buildButton("Popular", false),
          buildButton("Man", false),
          buildButton("Woman", false),
          buildButton("Kids", false),
          // Add more buttons as needed
        ],
      ),
    );
  }
}
