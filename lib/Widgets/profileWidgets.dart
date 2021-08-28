import 'package:flutter/material.dart';

class PositionWidgets extends StatelessWidget {
  const PositionWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 120,
        child: Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'asset/tushar.jpeg',
                    )))));
  }
}
