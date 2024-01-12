import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/common_widgets/toast_widget.dart';
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
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  insetPadding: EdgeInsets.zero,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    height: 206,
                    width: 320,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '로그아웃',
                            style: DesignTextStyle(
                                    style: DesignStyle.SubTitle_Bold,
                                    color: DesignColor.Primary)
                                .textStyle,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            '정말 로그아웃하시겠습니까?',
                            style: DesignTextStyle(
                                    style: DesignStyle.Body,
                                    color: DesignColor.Neutral.shade70)
                                .textStyle,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 120,
                                height: 46,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor:
                                        DesignColor.Primary.shade10,
                                    shape: DesignButtonStyle.BorderStyle04,
                                  ),
                                  onPressed: () {
                                    context.pop();
                                  },
                                  child: Text(
                                    '아니오',
                                    style: DesignTextStyle(
                                            style: DesignStyle.Label_1_SemiBold,
                                            color: DesignColor.Neutral.shade50)
                                        .textStyle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              SizedBox(
                                width: 120,
                                height: 46,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: DesignColor.Primary,
                                    shape: DesignButtonStyle.BorderStyle04,
                                  ),
                                  onPressed: () {
                                    context.pop();
                                    showToast(context, '로그아웃이 성공적으로 되었습니다.');
                                  },
                                  child: Text(
                                    '예',
                                    style: DesignTextStyle(
                                            style: DesignStyle.Label_1_SemiBold,
                                            color: Colors.white)
                                        .textStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
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
