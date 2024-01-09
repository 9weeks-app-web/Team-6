import 'package:flutter/material.dart';

enum Filtering {
  region,
  job,
  fields,
  experience,
  skill,
}

enum Community {
  all,
  growth,
  free,
  recruit,
}

class TabItem<T> {
  final T type;
  final String label;
  final Widget content;

  TabItem({
    required this.type,
    required this.label,
    required this.content,
  });
}
