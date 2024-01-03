import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_club_widget.dart';
import 'package:flutter_app/view/widgets/my_community_widgets/my_community_recruit_widget.dart';

class MyCommunityPortfolioPage extends StatefulWidget {
  const MyCommunityPortfolioPage({super.key});
  @override
  _MyCommunityPortfolioPageState createState() =>
      _MyCommunityPortfolioPageState();
}

class _MyCommunityPortfolioPageState extends State<MyCommunityPortfolioPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                      _buildButton('나의 클럽', DesignColor.Neutral.shade10, 0),
                      _buildButton('채용 정보', DesignColor.Neutral.shade10, 1),
                    ],
                  ),
                  _pageIndex == 0
                      ? const SizedBox(height: 20)
                      : const SizedBox(height: 7.5),
                  _buildPageBody(context, _pageIndex),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text, Color borderColor, int index) {
    return SizedBox(
      width: 155,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          side: BorderSide(width: 1.0, color: borderColor),
          shape: DesignButtonStyle.BorderStyle04,
        ),
        onPressed: () {
          setState(() {
            _pageIndex = index;
          });
        },
        child: Text(
          text,
          style: DesignTextStyle(
                  color: DesignColor.Neutral.shade40,
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
      default:
        return const SizedBox.shrink();
    }
  }
}
