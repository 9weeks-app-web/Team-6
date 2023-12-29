import 'package:flutter_app/view/app_wrapper.dart';
import 'package:flutter_app/view/pages/login_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_page.dart';
import 'package:flutter_app/view/pages/recruit_page.dart';
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
  ),
  GoRoute(
    path: '/recruit',
    builder: (context, state) => const RecruitPage(),
  )
]);
