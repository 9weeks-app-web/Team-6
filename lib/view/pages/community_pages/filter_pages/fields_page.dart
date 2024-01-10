import 'package:flutter/material.dart';
import 'package:flutter_app/util/dummy_data/filtering_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/basic_filter_tabbar_view.dart';

class FieldsPage extends StatelessWidget {
  const FieldsPage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = '분야 선택';
    List<String> selectedJobList = [
      '3D디자이너',
      '웹 디자이너',
      '인테리어 디자이너',
    ];
    String selectedJob = '디자인';

    return BasicFilterTabbarView(
      title: title,
      selectedList: selectedJobList,
      filteringData: fields[selectedJob].toList() ?? [],
    );
  }
}
