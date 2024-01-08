import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/recruit_detail_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/apply_floating_button.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/shade_color_box.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/text_button_with_icon.dart';

class ApplyPage extends StatelessWidget {
  const ApplyPage({
    super.key,
    this.userName = '한수민',
    required this.recruitId,
  });
  final String? userName;
  final String recruitId;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> recruitInfo = recruitDetailData.firstWhere(
      (data) => data['id'] == recruitId,
    );

    bool isSelected = false;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: DesignColor.Neutral,
        ),
        title: Text(
          '$userName 님의 지원',
          style: DesignTextStyle(
            style: DesignStyle.SubTitle_SemiBold,
            color: DesignColor.Neutral,
          ).textStyle,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '[${recruitInfo['companyName']}] ${recruitInfo['title']}',
              style: DesignTextStyle.SubTitle_Bold,
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '지원부문',
                  style: DesignTextStyle.Label_1_SemiBold,
                ),
                const SizedBox(height: 14),
                ShadeColorBox(
                  child: Text(
                    recruitInfo['title'],
                    style: DesignTextStyle.Body,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '이력서',
                        style: DesignTextStyle.Label_1_SemiBold,
                      ),
                    ),
                    const TextButtonWithIcon(text: '추가'),
                  ],
                ),
                const SizedBox(height: 14),
                ShadeColorBox(
                  isWithEditMode: true,
                  child: Text(
                    '한수민_이력서.pdf',
                    style: DesignTextStyle.Body,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '기타 문서',
                        style: DesignTextStyle.Label_1_SemiBold,
                      ),
                    ),
                    const TextButtonWithIcon(text: '다른 파일 업로드'),
                  ],
                ),
                const SizedBox(height: 14),
                ShadeColorBox(
                  isWithEditMode: true,
                  child: Row(
                    children: [
                      Checkbox(
                        value: isSelected,
                        onChanged: (value) {
                          isSelected = value!;
                        },
                      ),
                      Text(
                        '스펙폴리오 포트폴리오 선택',
                        style: DesignTextStyle.Body,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const ApplyFloatingButton(),
    );
  }
}
