import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/community_detail_tab_list.dart';
import 'package:flutter_app/view/pages/community_pages/detail_pages/data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_widget.dart';

class ClubDetailPage extends StatelessWidget {
  const ClubDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> clubTabs = ['라운지', '채팅', '키워드', '투표'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          club['clubName'],
          style: DesignTextStyle(
            style: DesignStyle.SubTitle_SemiBold,
            color: DesignColor.Neutral,
          ).textStyle,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: TabWidget(
        tabContents: communityDetailTabList,
      ),
    );
  }
}
