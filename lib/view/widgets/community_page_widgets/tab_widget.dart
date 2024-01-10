import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tabbar_widgets/customed_tabbar_widget.dart';

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
            child: CustomedTabbarWidget(tabContents: tabContents),
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
