import 'package:flutter/material.dart';

enum Community {
  all,
  growth,
  free,
  recruit,
}

class TabItem {
  final Community type;
  final String label;
  final Widget content;

  TabItem({
    required this.type,
    required this.label,
    required this.content,
  });
}
