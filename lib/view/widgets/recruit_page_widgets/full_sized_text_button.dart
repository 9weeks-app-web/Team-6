import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class FullSizedTextButton extends StatelessWidget {
  const FullSizedTextButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: DesignColor.Primary,
        ),
        child: Text(
          text,
          style: DesignTextStyle(
            style: DesignStyle.Label_1_SemiBold,
            color: Colors.white,
          ).textStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
