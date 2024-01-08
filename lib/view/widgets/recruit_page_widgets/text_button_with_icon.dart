import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class TextButtonWithIcon extends StatelessWidget {
  const TextButtonWithIcon({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            text,
            style: DesignTextStyle.Label_2_SemiBold,
          ),
          const Icon(
            Icons.add,
            size: 18,
          ),
        ],
      ),
    );
  }
}
