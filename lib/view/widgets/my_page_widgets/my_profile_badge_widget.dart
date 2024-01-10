import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/custom_icons_icons.dart';
import 'package:go_router/go_router.dart';

class MyProfileBadgeWidget extends StatelessWidget {
  const MyProfileBadgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Name 님이 획득한 뱃지',
            style: DesignTextStyle(
                    style: DesignStyle.Title_Bold, color: Colors.white)
                .textStyle,
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 90),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    height: 300,
                    width: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/badge.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 31),
                          const Icon(CustomIcons.icon_star,
                              color: Colors.white, size: 60),
                          const SizedBox(height: 20),
                          Text(
                            '스펙폴리오 Pick\n3회 선정',
                            style: DesignTextStyle(
                                    color: Colors.white,
                                    style: DesignStyle.SubTitle_Bold)
                                .textStyle,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 11),
                          Text(
                            'YYYY.MM.DD',
                            style: DesignTextStyle(
                                    color: Colors.white,
                                    style: DesignStyle.Body)
                                .textStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 126,
          ),
          SizedBox(
            width: 320,
            height: 54,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
                shape: DesignButtonStyle.BorderStyle08,
              ),
              onPressed: () {
                context.pop();
              },
              child: Text(
                '닫기',
                style: DesignTextStyle(
                        color: DesignColor.Primary,
                        style: DesignStyle.Label_1_SemiBold)
                    .textStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 49,
          ),
        ]);
  }
}
