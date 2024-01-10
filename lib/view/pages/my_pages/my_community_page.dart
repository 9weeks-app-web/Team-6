import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_club_widget.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_recruit_apply_widget.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_recruit_detail_widget.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_recruit_widget.dart';
import 'package:flutter_app/viewmodel/my_community_page_viewmodel/my_community_page_notifier.dart';
import 'package:flutter_app/viewmodel/my_community_page_viewmodel/my_community_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCommunityPortfolioPage extends ConsumerWidget {
  const MyCommunityPortfolioPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myCommunitypageProvider);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildButton('나의 클럽', state, 0, ref),
                      _buildButton('채용 정보', state, 1, ref),
                    ],
                  ),
                  state.page == 0
                      ? const SizedBox(height: 20)
                      : const SizedBox(height: 7.5),
                  _buildPageBody(context, state.page),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
      String text, MyCommunityPageState state, int index, WidgetRef ref) {
    bool isSelected;
    if (index == 1 && (state.page == 2 || state.page == 3)) {
      isSelected = true;
    } else {
      isSelected = state.page == index;
    }
    return SizedBox(
      width: 155,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            side: BorderSide(
                width: 1.0,
                color: isSelected
                    ? DesignColor.Primary.shade10
                    : DesignColor.Neutral.shade10),
            shape: DesignButtonStyle.BorderStyle04,
            backgroundColor:
                isSelected ? DesignColor.Primary.shade10 : Colors.transparent),
        onPressed: () {
          ref.read(myCommunitypageProvider.notifier).pageChanged(index);
        },
        child: Text(
          text,
          style: DesignTextStyle(
                  color: isSelected
                      ? DesignColor.Primary
                      : DesignColor.Neutral.shade40,
                  style: DesignStyle.Label_2_SemiBold)
              .textStyle,
        ),
      ),
    );
  }

  Widget _buildPageBody(BuildContext context, int pageIndex) {
    switch (pageIndex) {
      case 0:
        return const MyCommunityClubWidget();
      case 1:
        return const MyCommunityRecruitWidget();
      case 2:
        return const MyCommunityRecruitDetailWidget();
      case 3:
        return const MyCommunityRecruitApplyWidget();
      default:
        return const SizedBox.shrink();
    }
  }
}
