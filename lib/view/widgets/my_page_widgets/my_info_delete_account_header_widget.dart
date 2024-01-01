import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyInfoDeleteAccountHeaderWidget extends StatelessWidget {
  const MyInfoDeleteAccountHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '주의하세요!',
          style: DesignTextStyle(
                  style: DesignStyle.SubTitle_Bold, color: DesignColor.Neutral)
              .textStyle,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '탈퇴시 삭제된 정보는 복구가 불가능합니다.\n불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서\n고객님의 불편함을 해결해 드리도록 노력하겠습니다.',
          style: DesignTextStyle(
                  style: DesignStyle.Label_2,
                  color: DesignColor.Neutral.shade80)
              .textStyle,
        ),
      ],
    );
  }
}
