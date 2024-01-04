import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:go_router/go_router.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'SNS 계정 연동하기',
                    style: DesignTextStyle(
                            color: DesignColor.Neutral,
                            style: DesignStyle.SubTitle_Bold)
                        .textStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '스팩폴리오와 SNS 계정을 연동해서\n나의 프로필 링크를 추가해보세요! ',
                    style: DesignTextStyle(
                            color: DesignColor.Neutral.shade40,
                            style: DesignStyle.Body)
                        .textStyle,
                    textAlign: TextAlign.center,
                  ),
                  IconButton(
                    iconSize: 44,
                    onPressed: () {
                      context.push('/mypage/snslink');
                    },
                    icon: const Icon(
                      Icons.add_circle_outlined,
                      color: DesignColor.Primary,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                '로그아웃',
                style: DesignTextStyle(
                        style: DesignStyle.Body_Bold,
                        color: DesignColor.Neutral.shade60)
                    .textStyle,
              ),
            ),
            const Divider(
              height: 1,
            ),
            TextButton(
              onPressed: () {
                context.push('/mypage/deleteaccount');
              },
              child: Text(
                '회원 탈퇴',
                style: DesignTextStyle(
                        style: DesignStyle.Body_Bold,
                        color: DesignColor.Neutral.shade40)
                    .textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
