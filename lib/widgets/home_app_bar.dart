import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const   Row(
            children: [
              Icon(Icons.location_on, color: Colors.brown),
              SizedBox(width: 8),
              Text(
                'New York, USA',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Icon(Icons.arrow_drop_down, color: Colors.black),
            ],
          ),
          Stack(
            children: [
             const Icon(Icons.notifications_none, color: Colors.black, size: 28),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: const Text(
                    ' ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      
    );
    
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
