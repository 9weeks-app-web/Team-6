import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyCommunityClubWidget extends StatelessWidget {
  const MyCommunityClubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '나의 클럽 리스트',
          style: DesignTextStyle(
                  style: DesignStyle.Label_1_SemiBold,
                  color: DesignColor.Neutral)
              .textStyle,
        ),
        Container(
          width: 320,
          height: 320,
          color: Colors.black,
        ),
        Container(
          width: 320,
          height: 320,
          color: Colors.red,
        ),
        Container(
          width: 320,
          height: 320,
          color: Colors.yellow,
        ),
        Container(
          width: 320,
          height: 320,
          color: Colors.green,
        ),
        Container(
          width: 320,
          height: 320,
          color: Colors.blue,
        ),
      ],
    );
  }
}
