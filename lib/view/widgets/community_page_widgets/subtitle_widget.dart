import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    super.key,
    required this.label,
    this.padding,
    this.textStyle,
  });
  final String label;
  final EdgeInsets? padding;
  final DesignStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 12),
      child: Text(
        label,
        style: DesignTextStyle(
          style: textStyle ?? DesignStyle.SubTitle_SemiBold,
        ).textStyle,
      ),
    );
  }
}
