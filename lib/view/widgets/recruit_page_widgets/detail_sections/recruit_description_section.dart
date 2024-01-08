import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/description_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/rich_text_with_divider_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/table_widget.dart';

class RecruitDescriptionSection extends StatelessWidget {
  const RecruitDescriptionSection({
    super.key,
    required this.recruitInfo,
  });

  final Map<String, dynamic> recruitInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        RichTextWithDividerWidget(
          frontText: recruitInfo['companyName'],
          secondText: recruitInfo['location_Si_Gu'],
          textStyle: DesignTextStyle.Label_2_Medium,
        ),
        const SizedBox(height: 8),
        Text(
          recruitInfo['title'],
          style: DesignTextStyle.HeadLine_Bold,
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
          recruitInfo['description'],
          style: DesignTextStyle.Label_2_Regular,
        ),
        const SizedBox(height: 32),
        const SubTitleWidget(label: '기술스택 ・ 툴'),
        const SizedBox(height: 32),
        Wrap(
          spacing: 8,
          runSpacing: 6,
          children: recruitInfo['stack']
              .map<Widget>(
                (stack) => ChipWidget(
                  label: stack,
                  type: ChipType.tag,
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
    );
  }
}
