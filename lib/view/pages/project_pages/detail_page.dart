import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/project_widgets/heading_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/viewmodel/app_wrapper_viewmodel/app_wrapper_notifier.dart';

class ProjectDetailPage extends ConsumerWidget {
  const ProjectDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pageIndex = ref.watch(appwrapperProvider);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              // header
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: HeaderWidget(),
              ),
              SizedBox(
                height: 10,
              ),
              // title and back button
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                    SizedBox(width: 60),
                    Text(
                      '미술 작품 거래 차트 서비스',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Icon(Icons.share_outlined),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/project/detail.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadingTextWidget(text: '프로젝트 소개'),
                            SizedBox(height: 16),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    width: 4,
                                    height: 44,
                                    color: Color(0xFF99BDFF),
                                  ),
                                  SizedBox(width: 10),
                                  Flexible(
                                    child: Text(
                                        '그림, 미술, 예술, 전시 등 감성적인 기획들을 좋아하시는 분 신청 바랍니다. ',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: Flexible(
                                  child: Text(
                                    '투자 붐이된 시대에 투자할 곳을 많이 찾고 있었습니다.\n금융회사를 다니다보니 여러 방면의 금융시스템과 \n투자처를 찾다보니 가장 수익률이 좋은 곳은 \n미술시장이란 것을 알게 되었습니다.\n\n부동산의 장점과 동산의 장점이 합쳐진 수익률이 극대화된 상품이었죠. 그런데 정보가 너무 없었습니다.\n그래서 미술 플랫폼들이 지금 마구 생겨나는 시기임에도 \n기존의 좋은 작품들은 하나도 쓰지 못하고 새로운 디자인, ai 디자인만 새로운 플랫폼에 유입되면서 \n그들은 기존의 시장에서 제명되고 있죠\n\n작가님들과 친해지며 미술업계 깊숙히 다녀왔는데 정말 너무 썩어있었습니다. 순수회화시장이 크지못하고 기득권이 자리잡아 그 울타리를 절대 부수지 못하는 그런 분위기...\n요즘 IT시대라면 충분히 가능할 것이라고 보고 있고, \n\n회의 진행은 1달 1회 오프라인 정기회의 필요 시 온라인 디스코드로 생각 중에 있습니다. 슬랙도 이용합니다.',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF4C4C4C), fontWeight: FontWeight.w400),
                              )),
                            ),
                            SizedBox(height: 40),
                            HeadingTextWidget(text: '모집현황'),
                            SizedBox(height: 16),
                            Placeholder(
                              fallbackHeight: 200,
                            ),
                            SizedBox(height: 40),
                            HeadingTextWidget(text: '작업도구'),
                            SizedBox(height: 16),
                            Placeholder(
                              fallbackHeight: 100,
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 78,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: pageIndex.page,
          selectedItemColor: DesignColor.Primary.shade90,
          unselectedItemColor: DesignColor.Neutral.shade40,
          onTap: (value) {
            ref.read(appwrapperProvider.notifier).pageChanged(value);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 24),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, size: 24),
              label: '커뮤니티',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.portrait, size: 24),
              label: '포트폴리오',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work, size: 24),
              label: '프로젝트',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 24),
              label: '마이',
            ),
          ],
        ),
      ),
    );
  }
}
