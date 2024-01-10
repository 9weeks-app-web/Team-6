import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/rich_text_with_divider_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/shadows.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/full_sized_text_button.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/squire_icon_button.dart';
import 'package:go_router/go_router.dart';

class FloatingRecruitButton extends StatelessWidget {
  const FloatingRecruitButton({
    super.key,
    required this.recruitInfo,
  });

  final Map<String, dynamic> recruitInfo;

  @override
  Widget build(BuildContext context) {
    onTap() {
      context.push('/community/apply/${recruitInfo['id']}');
    }

    String text = '입사지원';

    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: shadows,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RichTextWithDividerWidget(
              frontText: recruitInfo['companyName'],
              secondText: recruitInfo['location_Gu'],
            ),
            const SizedBox(height: 2),
            Text(
              recruitInfo['title'],
              style: DesignTextStyle.Body_Bold,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SquireIconButton(icon: Icons.star_border),
                const SizedBox(width: 12),
                Expanded(
                  child: FullSizedTextButton(
                    onTap: onTap,
                    text: text,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
