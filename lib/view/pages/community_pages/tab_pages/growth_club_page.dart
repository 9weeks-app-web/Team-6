import 'package:flutter/material.dart';
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
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: CommunityCardWidget(
            width: CardWidth.wMax,
            type: CardType.growth,
          ),
        );
      },
    );
  }
}
