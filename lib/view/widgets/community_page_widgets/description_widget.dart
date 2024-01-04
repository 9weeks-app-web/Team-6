import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          color: DesignColor.Primary.shade20,
        ),
        color: DesignColor.Primary.shade5,
      ),
      child: child,
    );
  }
}
