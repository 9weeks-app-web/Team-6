import 'package:flutter/material.dart';
import 'package:flutter_app/util/dummy_data/filtering_data.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/basic_filter_tabbar_view.dart';
import 'package:go_router/go_router.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({super.key});

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  String title = '기술ㆍ스택 선택';
  List<String> selectedSkillList = [
    'Sketch',
    'UI 디자인',
    'Figma',
  ];

  @override
  Widget build(BuildContext context) {
    void resetOptions() {
      selectedSkillList.clear();
      setState(() {});
    }

    void onTapItem(String item) {
      if (selectedSkillList.isNotEmpty && selectedSkillList.isNotEmpty) {
        if (!selectedSkillList.contains(item)) {
          selectedSkillList.add(item);
          setState(() {});
        }
      }
    }

    void searchByOptions() {
      context.pop();
    }

    return BasicFilterTabbarView(
      title: title,
      selectedList: selectedSkillList,
      filteringData: skills,
      onTapIconBtn: resetOptions,
      onTapTextBtn: searchByOptions,
      onTapItem: onTapItem,
    );
  }
}
