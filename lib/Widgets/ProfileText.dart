import 'package:flutter/material.dart';

class ProfileText extends StatelessWidget {
  final String? title;
  const ProfileText({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        fontSize: 15,
      ),
    );
  }
}
