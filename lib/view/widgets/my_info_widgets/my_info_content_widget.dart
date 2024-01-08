import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/viewmodel/my_info_page_viewmodel/my_info_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyInfoContentWidget extends ConsumerWidget {
  const MyInfoContentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                'SNS 계정 연동하기',
                style: DesignTextStyle(
                        color: DesignColor.Neutral,
                        style: DesignStyle.SubTitle_Bold)
                    .textStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '스팩폴리오와 SNS 계정을 연동해서\n나의 프로필 링크를 추가해보세요! ',
                style: DesignTextStyle(
                        color: DesignColor.Neutral.shade40,
                        style: DesignStyle.Body)
                    .textStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                iconSize: 44,
                onPressed: () {
                  ref.read(myInfopageProvider.notifier).pageChanged(1);
                },
                icon: const Icon(
                  Icons.add_circle_outlined,
                  color: DesignColor.Primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
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
    );
  }
}
