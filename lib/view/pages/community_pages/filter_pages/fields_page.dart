import 'package:flutter/material.dart';
import 'package:flutter_app/util/dummy_data/filtering_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/basic_filter_tabbar_view.dart';
import 'package:go_router/go_router.dart';

class FieldsPage extends StatefulWidget {
  const FieldsPage({super.key});

  @override
  State<FieldsPage> createState() => _FieldsPageState();
}

class _FieldsPageState extends State<FieldsPage> {
  String title = '분야 선택';
  List<String> selectedJobList = [
    '3D디자이너',
    '웹 디자이너',
    '인테리어 디자이너',
  ];
  String selectedJob = '디자인';

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
      filteringData: fields[selectedJob].toList() ?? [],
      onTapIconBtn: resetOptions,
      onTapTextBtn: searchByOptions,
      onTapItem: onTapItem,
    );
  }
}
