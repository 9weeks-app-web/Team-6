import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/user_profile_tile.dart';

class CommentCardWidget extends StatelessWidget {
  const CommentCardWidget({
    super.key,
    required this.comment,
  });
  final Map<String, Object> comment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserProfileTile(
          nickname: comment['nickname'] as String,
          time: comment['time'] as String,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comment['comment'] as String,
                style: DesignTextStyle.Body,
              ),
              const SizedBox(height: 6),
              Text(
                '답글 달기',
                style: DesignTextStyle(
                  style: DesignStyle.Label_2_SemiBold,
                  color: DesignColor.Neutral.shade50,
                ).textStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
