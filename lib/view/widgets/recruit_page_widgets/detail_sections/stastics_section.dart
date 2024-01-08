import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/description_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';

class StasticsSection extends StatelessWidget {
  const StasticsSection({
    super.key,
    required this.stasticsInfo,
  });
  final Map<String, dynamic> stasticsInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubTitleWidget(label: '지원자 통계'),
        const SizedBox(height: 12),
        DescriptionWidget(
          withBorder: false,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: stasticsInfo['applicant'].entries.map<Widget>(
              (apply) {
                dynamic lastElement = stasticsInfo['applicant'].entries.last;
                return Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: apply.key == lastElement.key
                              ? Colors.transparent
                              : DesignColor.Primary.shade20,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          apply.key,
                          style: DesignTextStyle.Label_2_Regular,
                        ),
                        Text(
                          apply.value.toString(),
                          style: DesignTextStyle(
                            style: DesignStyle.HeadLine_Bold,
                            color: DesignColor.Primary.shade90,
                          ).textStyle,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
        const SizedBox(height: 12),
        const DescriptionWidget(
          withBorder: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '경력별 현황',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
