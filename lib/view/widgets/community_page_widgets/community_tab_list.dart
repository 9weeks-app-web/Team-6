import 'package:flutter_app/view/pages/community_pages/tab_pages/all_page.dart';
import 'package:flutter_app/view/pages/community_pages/tab_pages/free_club_page.dart';
import 'package:flutter_app/view/pages/community_pages/tab_pages/growth_club_page.dart';
import 'package:flutter_app/view/pages/community_pages/tab_pages/recruit_page.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';

List<TabItem> communityTabList = [
  TabItem(
    type: Community.all,
    label: '전체',
    content: const AllPage(),
  ),
  TabItem(
    type: Community.growth,
    label: '성장클럽',
    content: const GrowthClubPage(),
  ),
  TabItem(
    type: Community.free,
    label: '자유클럽',
    content: const FreeClubPage(),
  ),
  TabItem(
    type: Community.recruit,
    label: '채용',
    content: const RecruitPage(),
  ),
];
