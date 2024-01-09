import 'package:flutter/material.dart';
import 'package:flutter_app/util/dummy_data/filtering_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/basic_filter_tabbar_view.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = '직무 선택';
    List<String> selectedJobList = [
      '디자인',
      '게임제작',
    ];

    return BasicFilterTabbarView(
      title: title,
      selectedList: selectedJobList,
      filteringData: jobs,
    );
  }
}
