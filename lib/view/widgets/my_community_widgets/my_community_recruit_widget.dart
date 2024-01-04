import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_recruit_card_widget.dart';

class MyCommunityRecruitWidget extends StatelessWidget {
  const MyCommunityRecruitWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_sharp, size: 20),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 204,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 204,
                  width: 155,
                  color: Colors.black,
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
              onPressed: () {},
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
