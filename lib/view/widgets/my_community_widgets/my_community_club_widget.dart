import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/dummy_data/club_data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/community_card_widget.dart';

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
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 12),
          shrinkWrap: true,
          itemCount: growthClubData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CommunityCardWidget(
                width: CardWidth.wMax,
                type: CardType.free,
                cardData: growthClubData[index],
              ),
            );
          },
        ),
      ],
    );
  }
}
