import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/job_colors.dart';

enum ChipType {
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

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.label,
    this.type = ChipType.job,
  });

  final String label;
  final ChipType? type;

  @override
  Widget build(BuildContext context) {
    return type == ChipType.job
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: getJobColor(label),
            ),
            child: Text(
              label,
              style: DesignTextStyle.Caption_1_Medium,
            ),
          )
        : Container(
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
  }
}
