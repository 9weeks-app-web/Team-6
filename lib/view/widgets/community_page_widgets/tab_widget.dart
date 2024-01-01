import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.tabContents,
  });
  final List<TabItem> tabContents;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabContents.length,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
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
                  labelPadding: const EdgeInsets.only(right: 29),
                  indicatorWeight: 3,
                  indicatorColor: DesignColor.Neutral,
                  labelColor: DesignColor.Neutral,
                  unselectedLabelColor: DesignColor.Neutral.shade20,
                  unselectedLabelStyle: DesignTextStyle.Label_2_Regular,
                  labelStyle: DesignTextStyle.Label_2_SemiBold,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
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
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: TabBarView(
              children: tabContents
                  .map(
                    (tabItem) => tabItem.content,
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
