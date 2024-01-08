import 'package:flutter/material.dart';

enum Project {
  all,
  dev,
  design,
  plan,
}

class TabItemProject {
  final Project type;
  final String label;
  final Widget content;

  TabItemProject({
    required this.type,
    required this.label,
    required this.content,
  });
}
