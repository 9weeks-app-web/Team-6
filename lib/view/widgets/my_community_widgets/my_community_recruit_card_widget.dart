// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';

class MyCommunityRecruitCardWidget extends StatelessWidget {
  final Map<String, dynamic>? recruitData;
  const MyCommunityRecruitCardWidget({
    Key? key,
    this.recruitData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: DesignColor.Neutral.shade20),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    ChipWidget(
                      label: '스펙폴리오 지원',
                      type: ChipType.apply,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    ChipWidget(
                      label: '열람',
                      type: ChipType.viewState,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    print('inkwellText');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '공고상세',
                        style: DesignTextStyle(
                                color: DesignColor.Neutral.shade40,
                                style: DesignStyle.Caption_1_Medium)
                            .textStyle,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: DesignColor.Neutral.shade40,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: SizedBox(
              width: 226,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recruitData!['title'],
                    style: DesignTextStyle(
                            style: DesignStyle.Label_2_SemiBold,
                            color: DesignColor.Neutral)
                        .textStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    '[${recruitData!['companyName']}]-${recruitData!['title']}',
                    style: DesignTextStyle(
                            style: DesignStyle.Label_2_Regular,
                            color: DesignColor.Neutral.shade40)
                        .textStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '지원일 : 2023.12.25 ㅣ 16:35',
                    style: DesignTextStyle(
                            style: DesignStyle.Caption_1,
                            color: DesignColor.Neutral.shade40)
                        .textStyle,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 58,
                  height: 28,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: DesignColor.Neutral.shade10,
                      ),
                      shape: DesignButtonStyle.BorderStyle04,
                    ),
                    onPressed: () {},
                    child: Text(
                      '지원취소',
                      style: DesignTextStyle(
                              color: DesignColor.Neutral.shade40,
                              style: DesignStyle.Caption_1)
                          .textStyle,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
