import 'package:elegant_threads/widgets/cards.dart';
import 'package:elegant_threads/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_search_bar.dart';
import '../../widgets/my_circles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
          CustomSearchBar(),
          const SizedBox(height: 30,),
          const MyCard(),
    // MyCircles()
        
          ],
        ),
      ),
    );
  }
}
