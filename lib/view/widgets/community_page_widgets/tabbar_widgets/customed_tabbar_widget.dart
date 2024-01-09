import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';

class CustomedTabbarWidget extends StatelessWidget {
  const CustomedTabbarWidget({
    super.key,
    required this.tabContents,
  });

  final List<TabItem> tabContents;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: DesignColor.Neutral.shade20,
                ),
              ),
            ),
          ),
        ),
        TabBar(
          indicatorWeight: 3,
          indicatorColor: DesignColor.Primary.shade80,
          labelColor: DesignColor.Primary.shade80,
          unselectedLabelColor: DesignColor.Neutral.shade20,
          unselectedLabelStyle: DesignTextStyle.Label_2_Regular,
          labelStyle: DesignTextStyle.Label_2_SemiBold,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: tabContents
              .map(
                (tabItem) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Tab(
                    text: tabItem.label,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
