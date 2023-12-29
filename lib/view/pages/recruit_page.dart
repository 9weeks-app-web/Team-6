import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/advertise_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/filtering_chip_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/more_button_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';

class RecruitPage extends StatelessWidget {
  const RecruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> filterList = ["지역", "직무", "분야", "경력", "기술스택"];
    List<dynamic> activeRecruits = [];
    dynamic curActiveRecruit;
    List<dynamic> allRecruits = [];

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: [
          //header영역
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 12),
            child: HeaderWidget(),
          ),
          const SizedBox(height: 26),
          //search-filter영역
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '채용공고',
                  style: DesignTextStyle(
                          style: DesignStyle.HeadLine_Bold,
                          color: DesignColor.Neutral)
                      .textStyle,
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchBarWidget(),
              ),
              //filter buttons
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 30,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return FilteringChipWidget(
                        label: filterList[index],
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 8,
                      );
                    },
                    itemCount: filterList.length,
                  ),
                ),
              ),
            ],
          ),
          //recruit card영역
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: Text(
                    '이 회사는 지금 적극 채용 중!',
                    style: DesignTextStyle(
                            style: DesignStyle.SubTitle_Bold,
                            color: DesignColor.Neutral)
                        .textStyle,
                  ),
                  trailing: Text(
                    '${activeRecruits.indexOf(curActiveRecruit)}/${activeRecruits.length}',
                    style: TextStyle(
                      color: DesignColor.Neutral.shade20,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const RecruitCardWidget(
                  isActiveRecruit: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 0, right: 20),
                  title: Text(
                    '지원자가 많은 회사',
                    style: DesignTextStyle(
                            style: DesignStyle.SubTitle_Bold,
                            color: DesignColor.Neutral)
                        .textStyle,
                  ),
                  trailing: MoreButtonWidget(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(right: 10),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const RecruitCardWidget(
                        isActiveRecruit: false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          const AdvertiseWidget(),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 0, right: 20),
                  title: Text(
                    '지역별 인기있는 회사',
                    style: DesignTextStyle(
                            style: DesignStyle.SubTitle_Bold,
                            color: DesignColor.Neutral)
                        .textStyle,
                  ),
                  trailing: MoreButtonWidget(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(right: 10),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const RecruitCardWidget(
                        isActiveRecruit: false,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 58),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
