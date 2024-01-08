import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class ShadeColorBox extends StatelessWidget {
  const ShadeColorBox({
    super.key,
    required this.child,
    this.isSelected = false,
    this.isWithEditMode = false,
  });
  final Widget child;
  final bool? isSelected;
  final bool? isWithEditMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isSelected!
            ? DesignColor.Primary.shade5
            : DesignColor.Neutral.shade5,
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(child: child),
          isWithEditMode!
              ? const Icon(
                  Icons.close,
                  size: 16,
                )
              : Container(),
        ],
      ),
    );
  }
}
