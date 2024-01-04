import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/dummy_data/keyword_chatting_data.dart';
import 'package:flutter_app/view/widgets/comment_card_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/keyword_dialog_card_widget.dart';

class KeywordCardDetailPage extends StatelessWidget {
  const KeywordCardDetailPage({
    super.key,
    required this.dialogId,
  });
  final String dialogId;

  @override
  Widget build(BuildContext context) {
    dynamic keywordData = keywordChatData.firstWhere(
      (data) => data['id'] == dialogId,
    );
    List<Map<String, Object>> commentData = keywordData['comment'];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: DesignColor.Neutral,
        ),
        title: Text(
          '키워드',
          style: DesignTextStyle(
            style: DesignStyle.SubTitle_SemiBold,
            color: DesignColor.Neutral,
          ).textStyle,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          KeywordDialogCardWidget(
            keywordChatData: keywordData,
          ),
          Divider(
            color: DesignColor.Neutral.shade5,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: commentData.length,
            itemBuilder: (context, index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: CommentCardWidget(
                  comment: commentData[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
