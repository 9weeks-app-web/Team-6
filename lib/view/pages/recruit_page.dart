import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/advertise_widget.dart';
import 'package:flutter_app/view/widgets/filtering_chip_widget.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/more_button_widget.dart';
import 'package:flutter_app/view/widgets/recruit_card_widget.dart';
import 'package:flutter_app/view/widgets/search_bar_widget.dart';

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
          const HeaderWidget(),
          //search-filter영역
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '채용공고',
              ),
              const SearchBarWidget(),
              //filter buttons
              const SizedBox(height: 16),
              SizedBox(
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
            ],
          ),
          //recruit card영역
          const SizedBox(height: 40),
          Column(
            children: [
              ListTile(
                title: const Text('이 회사는 지금 적극 채용 중!'),
                trailing: Text(
                    '${activeRecruits.indexOf(curActiveRecruit)}/${activeRecruits.length}'),
              ),
              const RecruitCardWidget(
                isActiveRecruit: true,
              ),
            ],
          ),
          const SizedBox(height: 60),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('지원자가 많은 회사'),
                trailing: MoreButtonWidget(
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 227,
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
          const SizedBox(height: 60),
          const AdvertiseWidget(),
          const SizedBox(height: 60),
          Column(
            children: [
              ListTile(
                title: const Text('지역별 인기있는 회사'),
                trailing: MoreButtonWidget(
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
