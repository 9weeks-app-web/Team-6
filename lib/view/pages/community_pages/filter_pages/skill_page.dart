import 'package:flutter/material.dart';
import 'package:flutter_app/util/dummy_data/filtering_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/basic_filter_tabbar_view.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = '기술ㆍ스택 선택';
    List<String> selectedJobList = [
      'Sketch',
      'UI 디자인',
      'Figma',
    ];

    return BasicFilterTabbarView(
      title: title,
      selectedList: selectedJobList,
      filteringData: skills,
    );
  }
}
