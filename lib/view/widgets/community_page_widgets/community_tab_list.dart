import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';

List<TabItem> communityTabList = [
  TabItem(
    type: Community.all,
    label: '전체',
    content: const Text('전체'),
  ),
  TabItem(
    type: Community.growth,
    label: '성장클럽',
    content: const Text('성장클럽 컨텐츠'),
  ),
  TabItem(
    type: Community.free,
    label: '자유클럽',
    content: const Text('자유클럽 컨텐츠'),
  ),
  TabItem(
    type: Community.recruit,
    label: '채용',
    content: const Text('채용 컨텐츠'),
  ),
];
