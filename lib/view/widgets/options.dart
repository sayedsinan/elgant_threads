import 'package:flutter/material.dart';

Widget buildButton(String text, bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.black,
        backgroundColor: isSelected ? Colors.brown : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: BorderSide(color: Colors.grey),
      ),
      child: Text(text),
    ),
  );
}
