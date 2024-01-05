import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/recruit_detail_data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/description_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/rich_text_with_divider_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/table_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/user_profile_tile.dart';

class RecruitDetailPage extends StatelessWidget {
  const RecruitDetailPage({
    super.key,
    required this.recruitId,
  });
  final String recruitId;

  @override
  Widget build(BuildContext context) {
    dynamic recruitInfo = recruitDetailData.firstWhere(
      (data) => data['id'] == recruitId,
    );

    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 224,
            decoration: BoxDecoration(
              color: DesignColor.Neutral.shade20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //채용 설명 파트
                Column(
                  children: [
                    const SizedBox(height: 16),
                    RichTextWithDividerWidget(
                      frontText: recruitInfo['companyName'],
                      secondText: recruitInfo['location_Si_Gu'],
                    ),
                    const SizedBox(height: 8),
                    DescriptionWidget(
                      withBorder: false,
                      child: TableWidget(
                        keyValInfo: recruitInfo['description_brief'],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      recruitInfo,
                      style: DesignTextStyle.Label_2_Regular,
                    ),
                    const SubTitleWidget(label: '기술스택 ・ 툴'),
                    const SizedBox(height: 32),
                    Wrap(
                      children: recruitInfo['stack']
                          .map(
                            (stack) => ChipWidget(
                              label: stack,
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 32),
                    Divider(
                      color: DesignColor.Neutral.shade10,
                    ),
                    const SizedBox(height: 32),
                    TableWidget(
                      keyValInfo: {
                        '마감일': recruitInfo['due'],
                        '근무지역': recruitInfo['location_detail'],
                      },
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      color: DesignColor.Neutral.shade40,
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
                //통계 파트
                Column(
                  children: [
                    const SubTitleWidget(label: '지원자 통계'),
                    const SizedBox(height: 12),
                    DescriptionWidget(
                      withBorder: false,
                      child: Row(
                        children:
                            recruitInfo['stastics']['applicant'].entries.map(
                          (apply) {
                            return Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      apply.key,
                                      style: DesignTextStyle.Label_2_Regular,
                                    ),
                                    Text(
                                      apply.value,
                                      style: DesignTextStyle(
                                        style: DesignStyle.HeadLine_Bold,
                                        color: DesignColor.Neutral.shade90,
                                      ).textStyle,
                                    ),
                                  ],
                                ),
                                if (apply !=
                                    recruitInfo['stastics']['applicant']
                                        .entries
                                        .last)
                                  VerticalDivider(
                                    color: DesignColor.Primary.shade20,
                                  ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const DescriptionWidget(
                      withBorder: false,
                      child: Column(
                        children: [
                          Text(
                            '포트폴리오 및 기타 문서 제출',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const DescriptionWidget(
                      withBorder: false,
                      child: Column(
                        children: [
                          Text(
                            '경력별 현황',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //간략한 기업 정보
                Column(
                  children: [
                    const SubTitleWidget(label: '기업 정보'),
                    const SizedBox(height: 12),
                    UserProfileTile(
                      nickname: recruitInfo['companyInfo']['companyName'],
                      imageSize: 20,
                    ),
                    const SizedBox(height: 12),
                    TableWidget(
                      keyValInfo: recruitInfo['companyInfo'],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: DesignColor.Neutral.shade5,
            height: 8,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
