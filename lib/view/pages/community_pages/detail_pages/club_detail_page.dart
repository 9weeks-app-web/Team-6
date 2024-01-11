import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/community_detail_tab_list.dart';
import 'package:flutter_app/util/dummy_data/club_data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/community_card_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_widget.dart';

class ClubDetailPage extends StatefulWidget {
  const ClubDetailPage({
    super.key,
    required this.clubId,
    required this.type,
  });
  final String clubId;
  final String type;

  @override
  State<ClubDetailPage> createState() => _ClubDetailPageState();
}

class _ClubDetailPageState extends State<ClubDetailPage> {
  Map<String, dynamic> data = {};
  @override
  void initState() {
    data = getClubData();
    super.initState();
  }

  Map<String, Object> getClubData() {
    List<Map<String, Object>> clubList =
        widget.type == CardType.growth.name ? growthClubData : freeClubData;

    return clubList.firstWhere(
      (data) => data['id'].toString() == widget.clubId,
      orElse: () => growthClubData[0],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: DesignColor.Neutral,
          ),
          title: Text(
            data['clubName'] ?? '블루라이트 클럽',
            style: DesignTextStyle(
              style: DesignStyle.SubTitle_SemiBold,
              color: DesignColor.Neutral,
            ).textStyle,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: TabWidget(
          tabContents: communityDetailTabList,
        ),
      ),
    );
  }
}
