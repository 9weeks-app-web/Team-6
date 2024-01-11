import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';

class CustomedTabbarWidget extends StatelessWidget {
  const CustomedTabbarWidget({
    super.key,
    required this.tabContents,
    this.changeTabType,
  });

  final List<TabItem> tabContents;
  final Function(TabType)? changeTabType;

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
          onTap: (value) {
            if (changeTabType == null) return;
            if (value == tabContents.length - 1) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                changeTabType!(TabType.recruit);
              });
            }
            if (value != tabContents.length - 1) {
              changeTabType!(TabType.normal);
            }
          },
          // onTap: (value) {
          //   if (value == tabContents.length - 1) {
          //     changeTabType();
          //   }
          // },
          tabs: tabContents.map(
            (tabItem) {
              return GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Tab(
                    text: tabItem.label,
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
