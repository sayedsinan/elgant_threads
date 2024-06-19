import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 60, left: 20),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8,
                ), // Adjust the vertical padding
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 60,
              width: 50,
              color: Colors.brown[600],
              child: const Icon(
                Icons.power_settings_new,
              ),
            ),
          ),
        )
      ],
    );
  }
}
