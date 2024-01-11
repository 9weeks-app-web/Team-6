import 'package:flutter/material.dart';
import 'package:flutter_app/util/dummy_data/club_data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/community_card_widget.dart';

class GrowthClubPage extends StatelessWidget {
  const GrowthClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 20,
        left: 20,
        right: 20,
      ),
      shrinkWrap: true,
      itemCount: growthClubData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CommunityCardWidget(
            width: CardWidth.wMax,
            type: CardType.growth,
            cardData: growthClubData[index],
          ),
        );
      },
    );
  }
}
