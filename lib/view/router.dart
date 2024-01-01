import 'package:flutter_app/view/app_wrapper.dart';
import 'package:flutter_app/view/pages/community_pages/community_page.dart';
import 'package:flutter_app/view/pages/login_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_info_delete_account_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_info_edit_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_info_sns_link_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: '/home', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const AppWrapper(),
  ),
  GoRoute(
    path: '/mypage',
    builder: (context, state) => MyPage(),
    routes: [
      GoRoute(
        path: 'edit',
        builder: (context, state) => const MyInfoEditPage(),
      ),
      GoRoute(
        path: 'snslink',
        builder: (context, state) => const MyInfoSnsLinkPage(),
      ),
      GoRoute(
        path: 'deleteaccount',
        builder: (context, state) => const MyInfoDeleteAccountPage(),
      ),
    ],
  ),
  GoRoute(
    path: '/community',
    builder: (context, state) => const CommunityPage(),
  )
]);
