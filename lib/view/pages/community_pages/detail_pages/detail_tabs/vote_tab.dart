import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class VoteTab extends StatelessWidget {
  const VoteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(
              color: DesignColor.Neutral.shade10,
            ),
            child: Center(
              child: Text(
                '진행되고 있는 투표가 없습니다.',
                style: DesignTextStyle(
                  style: DesignStyle.Label_2_SemiBold,
                ).textStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
