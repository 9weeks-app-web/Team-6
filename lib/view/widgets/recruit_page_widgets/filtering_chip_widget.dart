import 'package:flutter/material.dart';

class FilteringChipWidget extends StatelessWidget {
  const FilteringChipWidget({
    super.key,
    required this.label,
    required this.onTap,
  });
  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Row(
        children: [
          Text(
            label,
          ),
          const Icon(
            Icons.keyboard_arrow_down,
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      // labelPadding: const EdgeInsets.symmetric(
      //   vertical: 8,
      //   horizontal: 10,
      // ),
      shape: const StadiumBorder(
        side: BorderSide(),
      ),
    );
  }
}
