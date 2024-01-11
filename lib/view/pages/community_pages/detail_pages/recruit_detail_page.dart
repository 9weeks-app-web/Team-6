import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/recruit_detail_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/detail_sections/company_info_section.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/detail_sections/recruit_description_section.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/detail_sections/recruit_recommand_section.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/detail_sections/stastics_section.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/floating_recruit_button.dart';

class RecruitDetailPage extends StatelessWidget {
  const RecruitDetailPage({
    super.key,
    required this.recruitId,
  });
  final String recruitId;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> recruitInfo = recruitDetailData.firstWhere(
      (data) => data['id'] == recruitId,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 224,
            decoration: BoxDecoration(
              color: DesignColor.Neutral.shade20,
            ),
            child: Image.asset(
              recruitInfo['image'],
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // 채용 설명파트
                RecruitDescriptionSection(recruitInfo: recruitInfo),
                // 통계 파트
                StasticsSection(stasticsInfo: recruitInfo['stastics']),
                const SizedBox(height: 32),
                // 간략한 기업 정보
                CompanyInfoSection(recruitInfo: recruitInfo),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Divider(
            color: DesignColor.Neutral.shade5,
            height: 8,
          ),
          const SizedBox(height: 32),
          // 추천공고
          RecruitRecommandSection(recruitInfo: recruitInfo),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingRecruitButton(recruitInfo: recruitInfo),
    );
  }
}
