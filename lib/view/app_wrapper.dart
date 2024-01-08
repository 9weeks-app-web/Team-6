import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/pages/community_pages/community_page.dart';
import 'package:flutter_app/view/pages/main_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_page.dart';
import 'package:flutter_app/view/pages/portfolio_page.dart';
import 'package:flutter_app/view/pages/project_pages/project_page.dart';
import 'package:flutter_app/viewmodel/app_wrapper_viewmodel/app_wrapper_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppWrapper extends ConsumerWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pageIndex = ref.watch(appwrapperProvider);

    final List<Widget> pageOptions = <Widget>[
      MainPage(),
      const CommunityPage(),
      const PortfolioPage(),
      const ProjectPage(),
      MyPage(),
    ];
    return SafeArea(
      child: Scaffold(
        body: pageOptions[pageIndex.page],
        bottomNavigationBar: SizedBox(
          height: 78,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            currentIndex: pageIndex.page,
            selectedItemColor: DesignColor.Primary.shade90,
            unselectedItemColor: DesignColor.Neutral.shade40,
            onTap: (value) {
              ref.read(appwrapperProvider.notifier).pageChanged(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 24),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat, size: 24),
                label: '커뮤니티',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.portrait, size: 24),
                label: '포트폴리오',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work, size: 24),
                label: '프로젝트',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 24),
                label: '마이',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
