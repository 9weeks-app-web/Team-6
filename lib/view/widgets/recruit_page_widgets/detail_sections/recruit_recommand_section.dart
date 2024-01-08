import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';

class RecruitRecommandSection extends StatelessWidget {
  const RecruitRecommandSection({
    super.key,
    required this.recruitInfo,
  });

  final Map<String, dynamic> recruitInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 560,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SubTitleWidget(
                  label: '수민님에게 추천하는 공고',
                ),
                Expanded(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 3,
                      childAspectRatio: 155 / 206,
                    ),
                    itemBuilder: (context, index) {
                      return RecruitCardWidget(
                        type: CardType.minimum,
                        recruitData: recruitInfo['recommand'][index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 74),
        ],
      ),
    );
  }
}
