// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';
import 'package:flutter_app/viewmodel/community_page_viewmodel/community_page_notifier.dart';

class CustomedTabbarWidget extends ConsumerWidget {
  const CustomedTabbarWidget({
    super.key,
    required this.tabContents,
    this.changeTabType,
    required this.tabController,
  });

  final List<TabItem> tabContents;
  final Function(TabType)? changeTabType;
  final TabController tabController;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(communitypageProvider);
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
          controller: tabController,
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
            ref.read(communitypageProvider.notifier).tabChanged(value);
            // if (changeTabType == null) return;
            // if (state.tab == tabContents.length - 1) {
            //   WidgetsBinding.instance.addPostFrameCallback((_) {
            //     changeTabType!(TabType.recruit);
            //   });
            // }
            // if (state.tab != tabContents.length - 1) {
            //   changeTabType!(TabType.normal);
            // }
          },
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
