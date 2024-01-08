import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_recruit_card_widget.dart';
import 'package:flutter_app/viewmodel/my_community_page_viewmodel/my_community_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCommunityRecruitApplyWidget extends ConsumerWidget {
  const MyCommunityRecruitApplyWidget({super.key});

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
                  '지원 현황',
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
          itemCount: 5,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: MyCommunityRecruitCardWidget(),
            );
          },
        ),
      ],
    );
  }
}
