import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/community_card_widget.dart';

class FreeClubPage extends StatelessWidget {
  const FreeClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: CommunityCardWidget(
            width: CardWidth.wMax,
            type: CardType.free,
          ),
        );
      },
    );
  }
}
