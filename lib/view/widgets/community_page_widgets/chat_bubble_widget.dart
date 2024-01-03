import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({
    super.key,
    required this.isMine,
    required this.message,
  });
  final bool isMine;
  final String message;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 220),
      child: Container(
        margin:
            isMine ? const EdgeInsets.all(0) : const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isMine ? DesignColor.Primary : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isMine == false ? 0 : 12),
            topRight: Radius.circular(isMine == true ? 0 : 12),
            bottomLeft: const Radius.circular(12),
            bottomRight: const Radius.circular(12),
          ),
        ),
        child: Text(
          message,
          style: DesignTextStyle(
            style: DesignStyle.Label_2_Regular,
            color: isMine ? Colors.white : DesignColor.Neutral,
          ).textStyle,
          softWrap: true,
        ),
      ),
    );
  }
}
