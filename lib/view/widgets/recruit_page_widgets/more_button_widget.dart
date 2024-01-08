import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MoreButtonWidget extends StatelessWidget {
  const MoreButtonWidget({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '더보기',
            style: TextStyle(
              color: DesignColor.Neutral.shade20,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Icon(
            Icons.chevron_right,
            size: 16,
            color: DesignColor.Neutral.shade20,
          ),
        ],
      ),
    );
  }
}
