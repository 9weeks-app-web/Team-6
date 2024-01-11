import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tabbar_widgets/customed_tabbar_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';
import 'package:flutter_app/viewmodel/community_page_viewmodel/community_page_notifier.dart';
import 'package:flutter_app/viewmodel/community_page_viewmodel/community_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabWidget extends ConsumerStatefulWidget {
  const TabWidget({
    super.key,
    required this.tabContents,
    this.changeTabType,
  });
  final List<TabItem> tabContents;
  final Function(TabType)? changeTabType;

  @override
  ConsumerState<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends ConsumerState<TabWidget> {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.tabContents.length,
      vsync: Scaffold.of(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<CommunityPageState>(
      communitypageProvider,
      (_, newState) {
        if (newState.tab != _tabController.index) {
          _tabController.animateTo(newState.tab);
        }
      },
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomedTabbarWidget(
          tabController: _tabController,
          changeTabType: widget.changeTabType,
          tabContents: widget.tabContents,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: TabBarView(
            controller: _tabController,
            children:
                widget.tabContents.map((tabItem) => tabItem.content).toList(),
          ),
        ),
      ],
    );
  }
}
