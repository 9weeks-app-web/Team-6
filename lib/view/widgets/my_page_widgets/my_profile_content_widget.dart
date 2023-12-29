import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common.dart';

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
                  style: DesignStyle.Title, color: DesignColor.Neutral)
              .textStyle,
        ),
        const SizedBox(
          height: 4,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyProfileInfoWidget(
              count: '200',
              iconData: Icons.favorite_border_outlined,
            ),
            MyProfileInfoWidget(
              count: '3000',
              iconData: Icons.arrow_back_rounded,
            ),
            MyProfileInfoWidget(
              count: '500',
              iconData: Icons.arrow_forward_outlined,
            )
          ],
        ),
        const SizedBox(
          height: 21,
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
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(
                iconData,
                color: DesignColor.Neutral.shade40,
                size: 14,
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
