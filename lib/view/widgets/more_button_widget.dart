import 'package:flutter/material.dart';

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
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '더보기',
          ),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
