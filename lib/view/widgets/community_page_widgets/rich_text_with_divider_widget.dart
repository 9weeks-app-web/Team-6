import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class RichTextWithDividerWidget extends StatelessWidget {
  const RichTextWithDividerWidget({
    super.key,
    required this.frontText,
    required this.secondText,
    this.textStyle,
  });

  final String frontText;
  final String secondText;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: frontText,
        style: textStyle ??
            DesignTextStyle(
              style: DesignStyle.Caption_1_Medium,
              color: DesignColor.Neutral.shade60,
            ).textStyle,
        children: [
          TextSpan(
            text: ' | ',
            style: textStyle ??
                DesignTextStyle(
                  style: DesignStyle.Caption_1_Medium,
                  color: DesignColor.Neutral.shade60,
                ).textStyle,
          ),
          TextSpan(
            text: secondText,
            style: textStyle ??
                DesignTextStyle(
                  style: DesignStyle.Caption_1_Medium,
                  color: DesignColor.Neutral.shade60,
                ).textStyle,
          ),
        ],
      ),
    );
  }
}
