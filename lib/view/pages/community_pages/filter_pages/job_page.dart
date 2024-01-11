import 'package:flutter/material.dart';
import 'package:flutter_app/util/dummy_data/filtering_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/basic_filter_tabbar_view.dart';
import 'package:go_router/go_router.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  String title = '직무 선택';
  List<String> selectedJobList = [
    '디자인',
    '게임제작',
  ];

  @override
  Widget build(BuildContext context) {
    void resetOptions() {
      selectedJobList.clear();
      setState(() {});
    }

    void onTapItem(String item) {
      if (selectedJobList.isNotEmpty && selectedJobList.isNotEmpty) {
        if (!selectedJobList.contains(item)) {
          selectedJobList.add(item);
          setState(() {});
        }
      }
    }

    void searchByOptions() {
      context.pop();
    }

    return BasicFilterTabbarView(
      title: title,
      selectedList: selectedJobList,
      filteringData: jobs,
      onTapIconBtn: resetOptions,
      onTapTextBtn: searchByOptions,
      onTapItem: onTapItem,
    );
  }
}
