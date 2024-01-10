import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/community_tab_list.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_widget.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const HeaderWidget(),
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(height: 4),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '커뮤니티',
                      style: DesignTextStyle.HeadLine_Bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SearchBarWidget(),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
              Expanded(
                child: TabWidget(
                  tabContents: communityTabList,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
