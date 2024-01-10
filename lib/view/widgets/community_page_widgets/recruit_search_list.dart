import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/more_button_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';
import 'package:go_router/go_router.dart';

class RecruitSearchList extends StatelessWidget {
  const RecruitSearchList({
    super.key,
    required this.recruitData,
  });
  final List<Map<String, dynamic>> recruitData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 0, right: 20),
            title: Text(
              '조건에 맞는 채용공고 (${recruitData.length}개)',
              style: DesignTextStyle.SubTitle_Bold,
            ),
            trailing: MoreButtonWidget(
              onPressed: () {},
            ),
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              childAspectRatio: 155 / 206,
            ),
            padding: const EdgeInsets.only(right: 20),
            shrinkWrap: true,
            itemCount: recruitData.length,
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
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
