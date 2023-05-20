import 'package:flutter/material.dart';

class videoCard extends StatelessWidget {
  double width = 0;
  videoCard(width);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      width: this.width,
      height: 222,
    );
  }
}
