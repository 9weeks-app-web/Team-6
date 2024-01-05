import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MoreButtonWidget extends StatelessWidget {
  const MoreButtonWidget({
    super.key,
    this.onPressed,
    this.label,
  });
  final void Function()? onPressed;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label ?? '더보기',
            style: DesignTextStyle(
              style: DesignStyle.Label_2_SemiBold,
              color: DesignColor.Neutral.shade60,
            ).textStyle,
          ),
          Icon(
            Icons.chevron_right,
            size: 20,
            color: DesignColor.Neutral.shade60,
          ),
        ],
      ),
    );
  }
}
