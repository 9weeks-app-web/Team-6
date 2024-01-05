import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/advertise_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/more_button_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';

class RecruitPage extends StatelessWidget {
  const RecruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> filterList = ["지역", "직무", "분야", "경력", "기술스택"];
    List<dynamic> activeRecruits = [];
    dynamic curActiveRecruit;
    List<dynamic> allRecruits = [];

    return ListView(
      shrinkWrap: true,
      children: [
        //recruit card영역
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 20),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(right: 20),
                title: Text(
                  '이 회사는 지금 적극 채용 중!',
                  style: DesignTextStyle.SubTitle_Bold,
                ),
                trailing: Text(
                  '${activeRecruits.indexOf(curActiveRecruit)}/${activeRecruits.length}',
                  style: DesignTextStyle(
                    style: DesignStyle.Caption_1,
                    color: DesignColor.Neutral.shade20,
                  ).textStyle,
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RecruitCardWidget(
                        type: CardType.maximum,
                        width: CardWidth.w300,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0, right: 20),
                title: Text(
                  '지원자가 많은 회사',
                  style: DesignTextStyle.SubTitle_Bold,
                ),
                trailing: MoreButtonWidget(
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 204,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: RecruitCardWidget(
                        type: CardType.minimum,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: AdvertiseWidget(),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0, right: 20),
                title: Text(
                  '지역별 인기있는 회사',
                  style: DesignTextStyle.SubTitle_Bold,
                ),
                trailing: MoreButtonWidget(
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 204,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: RecruitCardWidget(
                        type: CardType.minimum,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
