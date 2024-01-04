import 'package:flutter_app/view/pages/community_pages/detail_pages/detail_tabs/chatting_tab.dart';
import 'package:flutter_app/view/pages/community_pages/detail_pages/detail_tabs/keyword_tab.dart';
import 'package:flutter_app/view/pages/community_pages/detail_pages/detail_tabs/rounge_tab.dart';
import 'package:flutter_app/view/pages/community_pages/detail_pages/detail_tabs/vote_tab.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/tab_item.dart';

List<TabItem> communityDetailTabList = [
  TabItem(
    type: Community.all,
    label: '라운지',
    content: const RoungeTab(),
  ),
  TabItem(
    type: Community.growth,
    label: '채팅',
    content: const ChattingTab(),
  ),
  TabItem(
    type: Community.free,
    label: '키워드',
    content: const KeywordTab(),
  ),
  TabItem(
    type: Community.recruit,
    label: '투표',
    content: const VoteTab(),
  ),
];
