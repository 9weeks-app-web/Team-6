import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/table_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/user_profile_tile.dart';

class CompanyInfoSection extends StatelessWidget {
  const CompanyInfoSection({
    super.key,
    required this.recruitInfo,
  });

  final Map<String, dynamic> recruitInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubTitleWidget(label: '기업 정보'),
        const SizedBox(height: 12),
        UserProfileTile(
          nickname: recruitInfo['companyName'],
          imageSize: 20,
        ),
        const SizedBox(height: 12),
        TableWidget(
          keyValInfo: recruitInfo['companyInfo'],
        ),
      ],
    );
  }
}
