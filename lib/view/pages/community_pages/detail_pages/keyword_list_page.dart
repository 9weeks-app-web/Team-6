import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/dummy_data/keyword_chatting_data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/keyword_list_view_widget.dart';

class KeywordListPage extends StatelessWidget {
  const KeywordListPage({
    super.key,
    required this.keywordId,
  });
  final String keywordId;

  @override
  Widget build(BuildContext context) {
    String keyword = '포트폴리오';

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: DesignColor.Neutral,
        ),
        title: Text(
          keyword,
          style: DesignTextStyle(
            style: DesignStyle.SubTitle_SemiBold,
            color: DesignColor.Neutral,
          ).textStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const SingleChildScrollView(
        child: KeywordListViewWidget(
          keywordList: keywordChatData,
        ),
      ),
    );
  }
}
