import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/job_colors.dart';

enum ChipType {
  viewState,
  apply,
  tag,
  job,
}

Color? getJobColor(String job) {
  switch (job) {
    case '디자이너':
      return JobColors.designer;
    case '기획자':
      return JobColors.planner;
    case '개발자':
      return JobColors.developer;
  }
  return null;
}

Color? getApplyColor(String apply) {
  switch (apply) {
    case '스펙폴리오 지원':
      return ApplyColors.spacfolio;
    case '일반 지원':
      return ApplyColors.general;
    case '삭제된 공고':
      return ApplyColors.deleted;
  }
  return null;
}

Color getViewStateColor(String viewState) {
  switch (viewState) {
    case '열람':
      return ViewStateColors.view;
    case '미열람':
      return ViewStateColors.notview;
  }
  return Colors.black;
}

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.label,
    this.type = ChipType.job,
  });

  final String label;
  final ChipType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ChipType.job:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: getJobColor(label),
          ),
          child: Text(
            label,
            style: DesignTextStyle.Caption_1_Medium,
          ),
        );
      case ChipType.apply:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: BoxDecoration(
            //border: Border.all(color: DesignColor.Primary.shade30),
            borderRadius: BorderRadius.circular(4),
            color: getApplyColor(label),
          ),
          child: Text(
            label,
            style: DesignTextStyle.Label_3_SemiBold,
          ),
        );
      case ChipType.viewState:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: DesignColor.Neutral.shade5,
          ),
          child: Text(label,
              style: DesignTextStyle(
                      color: getViewStateColor(label),
                      style: DesignStyle.Label_3_SemiBold)
                  .textStyle),
        );
      case ChipType.tag:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: DesignColor.Neutral.shade40,
            ),
          ),
          child: Text(
            label,
            style: DesignTextStyle.Caption_1_Medium,
          ),
        );
      default:
        // 기본값 설정
        return const SizedBox.shrink();
    }
  }
}
