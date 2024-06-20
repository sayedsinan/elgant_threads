import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDressCard extends StatelessWidget {
  const MyDressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 250, // Set desired height
        width: 150, // Set desired width
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: 100,
              child: Image.asset('assets/download (1).jpg'),
            ),
            Row(
              children: [Text("Brown Jacket")],
            ),
          ],
        ),
      ),
    );
  }
}
