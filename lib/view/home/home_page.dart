import 'package:elegant_threads/widgets/cards.dart';
import 'package:elegant_threads/widgets/home_app_bar.dart';
import 'package:elegant_threads/widgets/my_circles.dart';
import 'package:elegant_threads/widgets/my_text_row.dart';
import 'package:elegant_threads/widgets/see_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/home_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context).size;
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
            Row(
              children: [
                const MyTextRow(
                  name: 'Flash Sale',
                  fontsize: 16,
                ),
                Spacer(), // Added Spacer for flexibility
                const Text('Closing in'),
              ],
            ),
            GridView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Disabling Grid scroll
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10) ),
                        child: Container(
                          height: sizeof.height * 0.25, // Adjusted size
                          width: sizeof.width * 0.4,
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                color: Colors.amber,
                              width: sizeof.width*1.1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Item Name $index', 
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      'Price: \$${(index + 1) * 10}', 
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10, 
                        left: sizeof.width * 0.3, // Adjusted position
                        child: Icon(Icons.shopping_cart, color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
