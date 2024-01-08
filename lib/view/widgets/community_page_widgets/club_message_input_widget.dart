import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/message_menu_widget.dart';

class ClubMessageInputWidget extends StatelessWidget {
  const ClubMessageInputWidget({
    super.key,
    required this.controller,
    required this.isMenuOpend,
    required this.handleMenu,
  });

  final TextEditingController controller;
  final bool isMenuOpend;
  final void handleMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isMenuOpend ? 199 : 75,
      padding: const EdgeInsets.only(
        top: 4,
        left: 11,
        right: 11,
        bottom: 4,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: TextField(
                  controller: controller,
                  onSubmitted: (value) {},
                  decoration: InputDecoration(
                    hintText: '메시지를 입력해주세요.',
                    hintStyle: DesignTextStyle(
                      style: DesignStyle.Body,
                      color: DesignColor.Neutral.shade20,
                    ).textStyle,
                    suffixIcon: CircleAvatar(
                      radius: 15,
                      backgroundColor: controller.text.isNotEmpty
                          ? DesignColor.Primary
                          : Colors.transparent,
                      child: Icon(
                        Icons.arrow_upward,
                        color: controller.text.isNotEmpty
                            ? Colors.white
                            : DesignColor.Neutral.shade20,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: DesignColor.Neutral.shade10,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: DesignColor.Neutral.shade10,
                        width: 1.0,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 18,
                      top: 6,
                      bottom: 6,
                    ),
                    filled: true,
                    fillColor: DesignColor.Neutral.shade5,
                  ),
                ),
              ),
              Positioned(
                left: 4,
                top: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: () => handleMenu,
                  child: Icon(
                    isMenuOpend ? Icons.close : Icons.add,
                    color: DesignColor.Neutral.shade50,
                  ),
                ),
              ),
            ],
          ),
          isMenuOpend ? const MessageMenuWidget() : Container(),
        ],
      ),
    );
  }
}
