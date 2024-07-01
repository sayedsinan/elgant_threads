import 'package:elegant_threads/widgets/cards.dart';
import 'package:elegant_threads/widgets/home_app_bar.dart';
import 'package:elegant_threads/widgets/my_circles.dart';
import 'package:elegant_threads/widgets/see_all.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(),
            const SizedBox(height: 30),
            const MyCard(),
            const SeeAllText(),
            MyCircles(),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Card(); // Replace with your actual grid item widget
              },
            ),
          ],
        ),
      ),
    );
  }
}
