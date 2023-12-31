import 'package:flutter/material.dart';

enum CardType {
  growth,
  free,
}

class CommunityCardWidget extends StatelessWidget {
  const CommunityCardWidget({
    super.key,
    required this.type,
  });

  final CardType type;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
