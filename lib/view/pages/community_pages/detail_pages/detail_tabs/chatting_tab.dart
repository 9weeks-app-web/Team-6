import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/dummy_data/chatting_data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chat_view_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/club_message_input_widget.dart';

class ChattingTab extends StatefulWidget {
  const ChattingTab({super.key});

  @override
  State<ChattingTab> createState() => _ChattingTabState();
}

class _ChattingTabState extends State<ChattingTab> {
  String myNickname = 'me';
  bool isMenuOpend = true;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    void handleMenuOpend() {
      isMenuOpend = !isMenuOpend;
      setState(() {});
    }

    return Column(
      children: [
        Expanded(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(
              color: DesignColor.Neutral.shade10,
            ),
            child: ListView(
              children: chatData
                  .map(
                    (chat) => ChatViewWidget(
                      myNickname: myNickname,
                      nickname: chat['nickname']!,
                      message: chat['message']!,
                      time: chat['time']!,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        BottomSheet(
          onClosing: () {},
          builder: (context) => ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: ClubMessageInputWidget(
              controller: controller,
              isMenuOpend: isMenuOpend,
              handleMenu: handleMenuOpend,
            ),
          ),
        ),
      ],
    );
  }
}
