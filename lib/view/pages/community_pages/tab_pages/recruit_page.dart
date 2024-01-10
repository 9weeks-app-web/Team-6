import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/community/recruit_detail_data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/default_recruit_list.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/recruit_search_list.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';
import 'package:go_router/go_router.dart';

class RecruitPage extends StatelessWidget {
  const RecruitPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isFilterMode = false;
    void changeFilterMode() {
      isFilterMode = !isFilterMode;
    }

    PageController pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.91,
    );

    int curIdx = 0;

    double listTileTopPadding = 17.5;
    double tabbarContentGap = 24;

    List<String> filterConditions = [
      '서울 강남구',
      '디자인',
      '3년차',
      'UX/UI',
      'UX/UI디자이너',
    ];

    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: tabbarContentGap - listTileTopPadding,
            left: 20,
          ),
          child: Column(
            children: [
              Visibility(
                visible: isFilterMode,
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 26),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: filterConditions.length,
                        padding: const EdgeInsets.only(right: 20),
                        itemBuilder: (BuildContext context, int index) {
                          return ChipWidget(
                            label: filterConditions[index],
                            type: ChipType.filtering,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 8);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(right: 20),
                title: Text(
                  '이 회사는 지금 적극 채용 중!',
                  style: DesignTextStyle.SubTitle_Bold,
                ),
                trailing: Text(
                  '${curIdx + 1}/${recruitDetailData.length}',
                  style: DesignTextStyle(
                    style: DesignStyle.Caption_1,
                    color: DesignColor.Neutral.shade20,
                  ).textStyle,
                ),
              ),
              SizedBox(
                height: 240,
                child: PageView.builder(
                  padEnds: false,
                  controller: pageController,
                  onPageChanged: (value) {
                    curIdx = value;
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: recruitDetailData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          context.push(
                            '/community/recruit/${recruitDetailData[index]['id']}',
                          );
                        },
                        child: RecruitCardWidget(
                          recruitData: recruitDetailData[index],
                          type: CardType.maximum,
                          width: CardWidth.w300,
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
        isFilterMode == true
            ? RecruitSearchList(
                recruitData: recruitDetailData,
              )
            : DefaultRecruitList(
                recruitData: recruitDetailData,
              ),
      ],
    );
  }
}
