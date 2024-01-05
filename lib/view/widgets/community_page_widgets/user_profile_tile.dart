import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

enum ProfileType {
  min,
  max,
}

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    required this.nickname,
    this.avatar,
    this.job,
    this.company,
    this.type,
    this.imageSize = 15,
    this.time,
  });
  final ProfileType? type;
  final String nickname;
  final String? avatar;
  final String? job;
  final String? company;
  final double? imageSize;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: imageSize,
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  nickname,
                  style: DesignTextStyle.Label_2_SemiBold,
                ),
                const SizedBox(width: 8),
                time != null
                    ? Text(
                        time!,
                        style: DesignTextStyle(
                          color: DesignColor.Neutral.shade50,
                          style: DesignStyle.Label_2_Regular,
                        ).textStyle,
                      )
                    : Container(),
              ],
            ),
            type == ProfileType.max
                ? RichText(
                    text: TextSpan(
                      text: '$job',
                      style: DesignTextStyle(
                        style: DesignStyle.Caption_1,
                        color: DesignColor.Neutral.shade40,
                      ).textStyle,
                      children: [
                        TextSpan(
                          text: ' / ',
                          style: DesignTextStyle(
                            style: DesignStyle.Caption_1,
                            color: DesignColor.Neutral.shade40,
                          ).textStyle,
                        ),
                        TextSpan(
                          text: company ?? '소속',
                          style: DesignTextStyle(
                            style: DesignStyle.Caption_1,
                            color: DesignColor.Neutral.shade40,
                          ).textStyle,
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        )
      ],
    );
  }
}
