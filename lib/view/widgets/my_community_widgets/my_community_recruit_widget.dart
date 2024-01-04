import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_recruit_card_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';
import 'package:flutter_app/viewmodel/my_community_page_viewmodel/my_community_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyCommunityRecruitWidget extends ConsumerWidget {
  const MyCommunityRecruitWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myCommunitypageProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '스크랩한 공고',
              style: DesignTextStyle(
                      style: DesignStyle.Label_1_SemiBold,
                      color: DesignColor.Neutral)
                  .textStyle,
            ),
            IconButton(
              onPressed: () {
                ref.read(myCommunitypageProvider.notifier).pageChanged(2);
              },
              icon: const Icon(Icons.arrow_forward_ios_sharp, size: 20),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 206,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: RecruitCardWidget(
                  type: CardType.minimum,
                ),
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Divider(
            height: 1,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '지원현황',
              style: DesignTextStyle(
                      style: DesignStyle.Label_1_SemiBold,
                      color: DesignColor.Neutral)
                  .textStyle,
            ),
            IconButton(
              onPressed: () {
                ref.read(myCommunitypageProvider.notifier).pageChanged(3);
              },
              icon: const Icon(Icons.arrow_forward_ios_sharp, size: 20),
            )
          ],
        ),
        SizedBox(
          height: 194,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 16),
                child: SizedBox(
                  height: 194,
                  width: 300,
                  child: MyCommunityRecruitCardWidget(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
