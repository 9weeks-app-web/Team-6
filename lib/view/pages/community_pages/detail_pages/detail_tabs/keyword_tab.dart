import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/dummy_data/keyword_chatting_data.dart';
import 'package:flutter_app/view/pages/community_pages/detail_pages/data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/keyword_dialog_card_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/keyword_list_view_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:go_router/go_router.dart';

class KeywordTab extends StatelessWidget {
  const KeywordTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String keywrodId = '1';

    return ListView(
      children: [
        const SizedBox(height: 16),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          shrinkWrap: true,
          itemCount: club['keyword'].length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 3,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.push('/community/club/grwoth/1/keyword/all/$keywrodId');
              },
              child: ClubKeywordChip(
                keyword: club['keyword'][index],
              ),
            );
          },
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: SubTitleWidget(label: '키워드가 포함된 대화'),
        ),
        Divider(
          color: DesignColor.Neutral.shade5,
        ),
        const KeywordListViewWidget(
          keywordList: keywordChatData,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
