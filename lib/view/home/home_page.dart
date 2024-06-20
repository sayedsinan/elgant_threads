import 'package:elegant_threads/view/widgets/cards.dart';
import 'package:elegant_threads/view/widgets/my_cards.dart';
import 'package:elegant_threads/view/widgets/my_circles.dart';
import 'package:elegant_threads/view/widgets/search_bar.dart';
import 'package:elegant_threads/view/widgets/second_text.dart';
import 'package:elegant_threads/view/widgets/sections.dart';
import 'package:elegant_threads/view/widgets/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: sizeOf.size.height * 0.2,
              width: sizeOf.size.width * 0.2,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              MySearchBar(),
              SizedBox(height: 10), 
              MyCard(),
              SizedBox(height: 10),
              MyText(),
              SizedBox(height: 10),
              MyCircles(),
              SizedBox(height: 10),
              Second(),
              SizedBox(height: 10),
              CoustemerSelection(),
              SizedBox(height: 10),
              MyDressCard(),
            ],
          ),
        ),
      ),
    );
  }
}
