

import 'package:flutter_app/view/pages/project_pages/tab_pages/all_page.dart';
import 'package:flutter_app/view/pages/project_pages/tab_pages/design_page.dart';
import 'package:flutter_app/view/pages/project_pages/tab_pages/dev_page.dart';
import 'package:flutter_app/view/pages/project_pages/tab_pages/plan_page.dart';
import 'package:flutter_app/view/widgets/project_widgets/tab_item.dart';

List<TabItemProject> projectTabList = [
  TabItemProject(
    type: Project.all,
    label: '전체',
    content: const AllPage(),
  ),
  TabItemProject(
    type: Project.dev,
    label: '개발',
    content: const DevPage(),
  ),
  TabItemProject(
    type: Project.design,
    label: '디자인',
    content: const DesignPage(),
  ),
  TabItemProject(
    type: Project.plan,
    label: '기획',
    content: const PlanPage(),
  ),
];