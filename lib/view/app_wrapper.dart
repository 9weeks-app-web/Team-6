import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/view/pages/community_page.dart';
import 'package:flutter_app/view/pages/main_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_page.dart';
import 'package:flutter_app/view/pages/portfolio_page.dart';
import 'package:flutter_app/view/pages/project_page.dart';
import 'package:flutter_app/viewmodel/app_wrapper_viewmodel/app_wrapper_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppWrapper extends ConsumerWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pageIndex = ref.watch(appwrapperProvider);

    final List<Widget> pageOptions = <Widget>[
      const MainPage(),
      const CommunityPage(),
      const PortfolioPage(),
      const ProjectPage(),
      MyPage(),
    ];
    return Scaffold(
      body: pageOptions[pageIndex.page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        currentIndex: pageIndex.page,
        onTap: (value) {
          ref.read(appwrapperProvider.notifier).pageChanged(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            label: '포트폴리오',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: '프로젝트',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이',
          ),
        ],
      ),
    );
  }
}
