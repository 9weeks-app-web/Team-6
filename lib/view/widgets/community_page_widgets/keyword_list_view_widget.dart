import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/keyword_dialog_card_widget.dart';
import 'package:go_router/go_router.dart';

class KeywordListViewWidget extends StatelessWidget {
  const KeywordListViewWidget({
    super.key,
    required this.keywordList,
  });
  final List<Map<String, Object>> keywordList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.push(
                '/community/club/growth/1/keyword/${keywordList[index]['id']}');
          },
          child: KeywordDialogCardWidget(
            keywordChatData: keywordList[index],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 6,
          color: DesignColor.Neutral.shade5,
        );
      },
      itemCount: 3,
    );
  }
}
