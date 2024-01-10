import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/advertise_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/more_button_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';
import 'package:go_router/go_router.dart';

class DefaultRecruitList extends StatelessWidget {
  const DefaultRecruitList({
    super.key,
    required this.recruitData,
  });
  final List<Map<String, dynamic>> recruitData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                height: 206,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          context.push(
                            '/community/recruit/${recruitData[index]['id']}',
                          );
                        },
                        child: RecruitCardWidget(
                          recruitData: recruitData[index],
                          type: CardType.minimum,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 28),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: AdvertiseWidget(
            image: 'assets/images/community/ad/ad_recruit_02.jpg',
          ),
        ),
        const SizedBox(height: 28),
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
                height: 206,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          context.push(
                            '/community/recruit/${recruitData[index]['id']}',
                          );
                        },
                        child: RecruitCardWidget(
                          recruitData: recruitData[index],
                          type: CardType.minimum,
                        ),
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
