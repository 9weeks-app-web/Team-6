import 'package:flutter/material.dart';

class FreeClubPage extends StatelessWidget {
  const FreeClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        Card(),
        Card(),
        Card(),
        Card(),
        Card(),
      ],
    );
  }
}
