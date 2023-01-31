import 'package:flutter/material.dart';
import 'responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: Container(
          color: Colors.black,
        ),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: Container(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
