import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/user_profile_tile.dart';

class KeywordDialogCardWidget extends StatelessWidget {
  const KeywordDialogCardWidget({
    super.key,
    required this.keywordChatData,
  });
  final Map<String, Object> keywordChatData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: UserProfileTile(
                  nickname: keywordChatData['nickname'] as String,
                ),
              ),
              Text(
                keywordChatData['time'] as String,
                style: DesignTextStyle(
                  style: DesignStyle.Caption_1,
                  color: DesignColor.Neutral.shade50,
                ).textStyle,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            keywordChatData['message'] as String,
            style: DesignTextStyle(
              style: DesignStyle.Body,
              color: DesignColor.Neutral,
            ).textStyle,
          ),
          const SizedBox(height: 10),
          ChipWidget(
            label: keywordChatData['keyword'] as String,
            type: ChipType.tag,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: DesignColor.Neutral.shade40,
                    size: 24,
                  ),
                  Text(
                    keywordChatData['like'].toString(),
                    style: DesignTextStyle(
                      style: DesignStyle.Label_2_SemiBold,
                      color: DesignColor.Neutral.shade40,
                    ).textStyle,
                  ),
                ],
              ),
              const SizedBox(width: 1.5),
              Row(
                children: [
                  Icon(
                    Icons.comment_outlined,
                    color: DesignColor.Neutral.shade40,
                    size: 24,
                  ),
                  Text(
                    (keywordChatData['comment'] as List).length.toString(),
                    style: DesignTextStyle(
                      style: DesignStyle.Label_2_SemiBold,
                      color: DesignColor.Neutral.shade40,
                    ).textStyle,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ClubKeywordChip extends StatelessWidget {
  const ClubKeywordChip({
    super.key,
    required this.keyword,
  });
  final String keyword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: DesignColor.Primary,
      ),
      alignment: Alignment.center,
      child: Text(
        keyword,
        style: DesignTextStyle(
          style: DesignStyle.Body,
          color: Colors.white,
        ).textStyle,
      ),
    );
  }
}
