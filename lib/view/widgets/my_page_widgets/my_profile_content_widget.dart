import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/custom_icons_icons.dart';

class MyProfileContentWidget extends StatelessWidget {
  const MyProfileContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Name',
          style: DesignTextStyle(
                  style: DesignStyle.Title_Bold, color: DesignColor.Neutral)
              .textStyle,
        ),
        const SizedBox(
          height: 4,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyProfileInfoWidget(
                count: '24,083', iconData: CustomIcons.icon_like_unfill),
            MyProfileInfoWidget(
              count: '3,635',
              iconData: CustomIcons.icon_follow,
            ),
            MyProfileInfoWidget(
              count: '200',
              iconData: CustomIcons.icon_following,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class MyProfileInfoWidget extends StatelessWidget {
  final IconData iconData;
  final String count;
  const MyProfileInfoWidget({
    super.key,
    required this.iconData,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Icon(
                iconData,
                color: DesignColor.Neutral.shade40,
                size: 20,
              ),
            ),
            Text(
              count,
              style: DesignTextStyle(
                      style: DesignStyle.Label_2_SemiBold,
                      color: DesignColor.Neutral.shade40)
                  .textStyle,
            )
          ],
        ),
      ),
    );
  }
}
