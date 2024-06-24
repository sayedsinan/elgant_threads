import 'package:flutter/material.dart';

class MyCircles extends StatelessWidget {
   MyCircles({Key? key}) : super(key: key);

  final List<String> items = ['Circle 1', 'Circle 2', 'Circle 3',]; // Example data

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.16, // Set the height to 30% of the screen height or adjust as needed
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        padding: EdgeInsets.all(8.0),
        itemCount: items.length, // Use the length of the 'items' list
        itemBuilder: (context, index) {
          return ClipRRect(
borderRadius: BorderRadius.circular(100),
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  items[index], // Use the actual data from 'items'
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
