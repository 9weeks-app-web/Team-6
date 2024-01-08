import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/rich_text_with_divider_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/shadows.dart';
import 'package:go_router/go_router.dart';

class FloatingRecruitButton extends StatelessWidget {
  const FloatingRecruitButton({
    super.key,
    required this.recruitInfo,
  });

  final Map<String, dynamic> recruitInfo;

  @override
  Widget build(BuildContext context) {
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
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: DesignColor.Neutral.shade20,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        DesignColor.Primary,
                      ),
                    ),
                    onPressed: () {
                      context.push('/community/apply/${recruitInfo['id']}');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      child: Text(
                        '입사지원',
                        style: DesignTextStyle.Label_1_SemiBold,
                      ),
                    ),
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
