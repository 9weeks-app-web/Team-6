import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/dummy_data/recruit_detail_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';
import 'package:flutter_app/viewmodel/my_community_page_viewmodel/my_community_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCommunityRecruitDetailWidget extends ConsumerWidget {
  const MyCommunityRecruitDetailWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    iconSize: 24,
                    onPressed: () {
                      ref.read(myCommunitypageProvider.notifier).pageChanged(1);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  '스크랩한 공고',
                  style: DesignTextStyle(
                          style: DesignStyle.Body_SemiBold,
                          color: DesignColor.Neutral)
                      .textStyle,
                ),
              ],
            ),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: recruitDetailData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: RecruitCardWidget(
                recruitData: recruitDetailData[index],
                type: CardType.maximum,
              ),
            );
          },
        ),
      ],
    );
  }
}
