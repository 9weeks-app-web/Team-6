import 'package:flutter_app/view/app_wrapper.dart';
import 'package:flutter_app/view/pages/community_pages/community_page.dart';
import 'package:flutter_app/view/pages/community_pages/detail_pages/club_detail_page.dart';
import 'package:flutter_app/view/pages/community_pages/detail_pages/keyword_card_detail_page.dart';
import 'package:flutter_app/view/pages/find_id_page.dart';
import 'package:flutter_app/view/pages/find_pw_page.dart';
import 'package:flutter_app/view/pages/login_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_info_delete_account_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_info_edit_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_interest_portfolio_detail_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_page.dart';
import 'package:flutter_app/view/pages/sign_up_page.dart';
import 'package:flutter_app/view/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: '/splash', routes: [
  GoRoute(
    path: '/splash',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/signup',
    builder: (context, state) => const SignUpPage(),
  ),
  GoRoute(
    path: '/findid',
    builder: (context, state) => const FindIdPage(),
  ),
  GoRoute(
    path: '/findpw',
    builder: (context, state) => const FindPwPage(),
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
        path: 'deleteaccount',
        builder: (context, state) => const MyInfoDeleteAccountPage(),
      ),
      GoRoute(
        path: 'interestdetail',
        builder: (context, state) => const MyInterestPortfolioDetailPage(),
      ),
    ],
  ),
  GoRoute(
    path: '/community',
    builder: (context, state) => const CommunityPage(),
    routes: [
      GoRoute(
        path: 'club/:clubId',
        builder: (context, state) => const ClubDetailPage(),
        routes: [
          GoRoute(
            path: 'keyword/:dialogId',
            builder: (context, state) => KeywordCardDetailPage(
              dialogId: state.pathParameters['dialogId'] ?? '',
            ),
          ),
        ],
      ),
    ],
  ),
]);
