import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chat_bubble_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/user_profile_tile.dart';

class ChatViewWidget extends StatelessWidget {
  const ChatViewWidget({
    super.key,
    required this.myNickname,
    required this.nickname,
    required this.message,
    required this.time,
  });

  final String myNickname;
  final String nickname;
  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    List<Widget> chatViewList = [
      ChatBubbleWidget(
        isMine: nickname == myNickname ? true : false,
        message: message,
      ),
      const SizedBox(width: 7),
      Text(
        time,
        style: DesignTextStyle(
          style: DesignStyle.Caption_1,
          color: DesignColor.Neutral.shade50,
        ).textStyle,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      child: Column(
        crossAxisAlignment: myNickname == nickname
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 10),
          myNickname == nickname
              ? Container()
              : UserProfileTile(nickname: nickname),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: myNickname == nickname
                  ? chatViewList.reversed.toList()
                  : chatViewList,
            ),
          ),
        ],
      ),
    );
  }
}
