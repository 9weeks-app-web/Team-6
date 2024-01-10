// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_icons_icons.dart';
import 'package:flutter_app/model/menu_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/pages/my_pages/my_community_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_info_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_interest_portfolio_detail_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_interest_portfolio_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_portfolio_page.dart';
import 'package:flutter_app/view/pages/my_pages/my_project_page.dart';
import 'package:flutter_app/view/widgets/common_widgets/custom_menu_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_profile_content_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_profile_widget.dart';
import 'package:flutter_app/viewmodel/my_page_viewmodel/my_page_notifier.dart';

class MyPage extends ConsumerWidget {
  MyPage({super.key});
  List<MenuModel> menuList = [
    MenuModel(
        iconImg: CustomIcons.icon_edit_1,
        title: '프로필 편집',
        listColor: DesignColor.Neutral),
    MenuModel(
        iconImg: CustomIcons.icon_photoreplace,
        title: '배너 이미지 교체',
        listColor: DesignColor.Neutral),
    MenuModel(
        iconImg: CustomIcons.icon_delete,
        title: '배너 이미지 삭제',
        listColor: DesignColor.System.warning),
    MenuModel(
        iconImg: Icons.share, title: '공유', listColor: DesignColor.Neutral),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mypageProvider);

    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  surfaceTintColor: const Color(0xFFFFFBFE),
                  expandedHeight: 320.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: LayoutBuilder(
                    builder: (context, constraints) {
                      bool isAppBarExpanded = constraints.maxHeight >
                          kToolbarHeight + MediaQuery.of(context).padding.top;
                      return FlexibleSpaceBar(
                        title: isAppBarExpanded
                            ? const SizedBox()
                            : _buildAppBarContent(context),
                        background: _buildAppBarBackground(),
                      );
                    },
                  ),
                ),
                _buildSliverPersistentHeader(),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: _buildPageBody(context, state.page),
            ),
          ),
          Visibility(
            visible: state.isOverlayVisible, // 이 값에 따라 Overlay의 표시 여부를 결정합니다.
            child: const MyInterestPortfolioDetailPage(),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBarContent(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipOval(
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Image.asset('assets/images/profile.png',
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Name',
                style: DesignTextStyle(
                        color: DesignColor.Neutral,
                        style: DesignStyle.Title_Bold)
                    .textStyle,
              ),
              const SizedBox(width: 120),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: CustomMenuWidget(items: menuList),
        ),
      ],
    );
  }

  Widget _buildAppBarBackground() {
    return Column(
      children: [
        MyProfileWidget(),
        const SizedBox(
          height: 15,
        ),
        const MyProfileContentWidget(),
      ],
    );
  }

  SliverPersistentHeader _buildSliverPersistentHeader() {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 32.0,
        maxHeight: 32.0,
        child: _buildHeaderContent(),
      ),
    );
  }

  Widget _buildHeaderContent() {
    // SliverPersistentHeader의 내용을 여기에 구현하세요.
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: 500,
          color: const Color(0xFFFFFBFE),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyMenuNavigateWidget(
                index: 0,
                menu: '포트폴리오',
              ),
              MyMenuNavigateWidget(
                index: 1,
                menu: '관심보드',
              ),
              MyMenuNavigateWidget(
                index: 2,
                menu: '프로젝트',
              ),
              MyMenuNavigateWidget(
                index: 3,
                menu: '커뮤니티',
              ),
              MyMenuNavigateWidget(
                index: 4,
                menu: '정보',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageBody(BuildContext context, int pageIndex) {
    switch (pageIndex) {
      case 0:
        return const MyPortfolioPage();
      case 1:
        return const MyInterestPortfolioPage();
      case 2:
        return const MyProjectPage();
      case 3:
        return const MyCommunityPortfolioPage();
      case 4:
        return const MyInfoPage();
      default:
        return const SizedBox.shrink();
    }
  }
}

class MyMenuNavigateWidget extends ConsumerWidget {
  final int index;
  final String menu;
  const MyMenuNavigateWidget({
    Key? key,
    required this.index,
    required this.menu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mypageProvider);

    return SizedBox(
      width: 100,
      height: 32,
      child: TextButton(
        onPressed: () {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(mypageProvider.notifier).pageChanged(index);
          });
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
