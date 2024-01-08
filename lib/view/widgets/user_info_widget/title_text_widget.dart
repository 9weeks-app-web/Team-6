import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  final String text;

  const CustomTitleText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ));
  }
}
