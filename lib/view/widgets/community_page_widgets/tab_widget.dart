import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tabbar_widgets/customed_tabbar_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.tabContents,
    this.changeTabType,
  });
  final List<TabItem> tabContents;
  final Function(TabType)? changeTabType;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabContents.length,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomedTabbarWidget(
            changeTabType: changeTabType,
            tabContents: tabContents,
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
