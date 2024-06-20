import 'package:flutter/material.dart';

class MyCircles extends StatelessWidget {
  const MyCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 2,
              height: MediaQuery.of(context).size.width * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
