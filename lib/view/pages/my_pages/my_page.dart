// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_app/view/pages/my_pages/my_community_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_project_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/pages/my_pages/my_info_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_interest_portfolio_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_portfolio_page.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_profile_content_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_profile_widget.dart';
import 'package:flutter_app/viewmodel/my_page_viewmodel/my_page_notifier.dart';

class MyPage extends ConsumerWidget {
  MyPage({super.key});

  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const MyProfileWidget(),
          const MyProfileContentWidget(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyMenuNavigateWidget(
                      index: 0,
                      menu: '포트폴리오',
                      pageController: pageController,
                    ),
                    MyMenuNavigateWidget(
                      index: 1,
                      menu: '관심보드',
                      pageController: pageController,
                    ),
                    MyMenuNavigateWidget(
                      index: 2,
                      menu: '프로젝트',
                      pageController: pageController,
                    ),
                    MyMenuNavigateWidget(
                      index: 3,
                      menu: '커뮤니티',
                      pageController: pageController,
                    ),
                    MyMenuNavigateWidget(
                      index: 4,
                      menu: '정보',
                      pageController: pageController,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              onPageChanged: (value) {
                ref.read(mypageProvider.notifier).pageChanged(value);
              },
              children: const [
                MyPortfolioPage(),
                MyInterestPortfolioPage(),
                MyProjectPage(),
                MyCommunityPortfolioPage(),
                MyInfoPage(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class MyMenuNavigateWidget extends ConsumerWidget {
  final int index;
  final String menu;
  final PageController pageController;

  const MyMenuNavigateWidget({
    Key? key,
    required this.index,
    required this.menu,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mypageProvider);
    return SizedBox(
      width: 100,
      height: 36,
      child: TextButton(
        onPressed: () {
          ref.read(mypageProvider.notifier).pageChanged(index);
          pageController.jumpToPage(index);
        },
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          backgroundColor: state.page == index ? DesignColor.Neutral : null,
          foregroundColor:
              state.page == index ? Colors.white : DesignColor.Neutral,
        ),
        child: Text(
          menu,
          style: DesignTextStyle(
                  style: DesignStyle.Label_2_SemiBold,
                  color:
                      state.page == index ? Colors.white : DesignColor.Neutral)
              .textStyle,
        ),
      ),
    );
  }
}
