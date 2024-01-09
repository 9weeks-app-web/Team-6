import 'package:flutter_app/view/pages/community_pages/filter_pages/experience_page.dart';
import 'package:flutter_app/view/pages/community_pages/filter_pages/fields_page.dart';
import 'package:flutter_app/view/pages/community_pages/filter_pages/job_page.dart';
import 'package:flutter_app/view/pages/community_pages/filter_pages/region_page.dart';
import 'package:flutter_app/view/pages/community_pages/filter_pages/skill_page.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';

List<TabItem> recruitFilterTabList = [
  TabItem(
    type: Filtering.region,
    label: '지역',
    content: const RegionPage(),
  ),
  TabItem(
    type: Filtering.job,
    label: '직무',
    content: const JobPage(),
  ),
  TabItem(
    type: Filtering.fields,
    label: '분야',
    content: const FieldsPage(),
  ),
  TabItem(
    type: Filtering.experience,
    label: '경력',
    content: const ExperiencePage(),
  ),
  TabItem(
    type: Filtering.skill,
    label: '기술ㆍ스택',
    content: const SkillPage(),
  ),
];
