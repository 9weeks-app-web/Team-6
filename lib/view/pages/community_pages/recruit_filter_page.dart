import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/recruit_filter_tab_list.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';

class RecruitFilterPage extends StatelessWidget {
  const RecruitFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 22),
        child: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: AppBar(
            iconTheme: const IconThemeData(
              color: DesignColor.Neutral,
            ),
            title: const SearchBarWidget(),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Expanded(
            child: TabWidget(
              tabContents: recruitFilterTabList,
            ),
          ),
        ],
      ),
    );
  }
}
