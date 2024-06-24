import 'package:elegant_threads/widgets/flash_sale_buttion.dart';
import 'package:flutter/material.dart';

// import 'timer_display.dart';

class FlashSale extends StatelessWidget {
  FlashSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Flash Sale',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Closing in : '),
                // TimerDisplay(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                FlashSaleButton(text: 'All', isSelected: false),
                FlashSaleButton(text: 'Newest', isSelected: true),
                FlashSaleButton(text: 'Popular', isSelected: false),
                FlashSaleButton(text: 'Man', isSelected: false),
                FlashSaleButton(text: 'Woman', isSelected: false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}