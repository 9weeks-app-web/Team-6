import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/community_tab_list.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_widget.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  TabType tabType = TabType.normal;

  void changeTabType(TabType type) {
    tabType = type;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            expandedHeight: 165.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeaderWidget(),
                    const SizedBox(height: 4),
                    Text(
                      '커뮤니티',
                      style: DesignTextStyle(
                        style: DesignStyle.HeadLine_Bold,
                        color: Colors.black,
                      ).textStyle,
                    ),
                    const SizedBox(height: 12),
                    SearchBarWidget(
                      tabType: tabType,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabWidget(
              tabContents: communityTabList,
              changeTabType: changeTabType,
            ),
          ),
        ],
      ),
    );
  }
}
