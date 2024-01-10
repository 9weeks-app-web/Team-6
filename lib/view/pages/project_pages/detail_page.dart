import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/project_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/project_widgets/heading_text.dart';
import 'package:flutter_app/view/widgets/project_widgets/project_card_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/viewmodel/app_wrapper_viewmodel/app_wrapper_notifier.dart';
import 'package:flutter/cupertino.dart';

class ProjectDetailPage extends ConsumerWidget {
  const ProjectDetailPage({super.key});

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        // title: const Text('Title'),
        // message: const Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// default behavior, turns the action's text to bold text.
            onPressed: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    '정보 수정',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.edit_outlined),
                ],
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    '모집 마감',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/images/project/icon-person-disabled.svg'),
                ],
              ),
            ),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            onPressed: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    '프로젝트 삭제',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/images/project/icon-delete.svg'),
                ],
              ),
            ),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
              onPressed: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      '프로젝트 완료',
                      style: TextStyle(
                        color: Color(0xFF0059FF),
                        fontSize: 16,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.check, color: Color(0xFF0059FF)),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pageIndex = ref.watch(appwrapperProvider);
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 320,
        height: 54,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Color(0xFF0059FF),
          onPressed: () {
            // FAB onPressed action
          },
          child: Text('지원하기'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                    SizedBox(width: 40),
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
                        GestureDetector(
                          onTap: () => _showActionSheet(context),
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Icon(Icons.more_vert),
                          ),
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
                                    fontSize: 14,
                                    color: Color(0xFF4C4C4C),
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                            SizedBox(height: 40),
                            HeadingTextWidget(text: '모집현황'),
                            SizedBox(height: 16),
                            RecruitmentStatus(),
                            SizedBox(height: 40),
                            HeadingTextWidget(text: '작업도구'),
                            SizedBox(height: 16),
                            ToolsWidget(),
                            SizedBox(height: 40),
                            SizedBox(
                              height: 26,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  HeadingTextWidget(text: '모집마감일'),
                                  SizedBox(width: 12),
                                  SizedBox(
                                    width: 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                          '2023. 12. 31',
                                          style: TextStyle(
                                            color: Color(0xFF4C4C4C),
                                            fontSize: 16,
                                            fontFamily: 'Pretendard Variable',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  RecruitingChip(isRecruiting: true),
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            HeadingTextWidget(text: '참고 링크'),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: SvgPicture.asset(
                                    'assets/images/project/check_circle.svg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  width: 291,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 9, vertical: 7),
                                    child: Text(
                                      'https://www.notion.so/sniperfactory1/UI-UX-8def242cfa5b4d1e9b5099879715554c',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Pretendard Variable',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 10,
                        color: Color(0xFFF3F3F3),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 40),
                              HeadingTextWidget(text: '리더 정보'),
                              SizedBox(height: 16),
                              LeaderInfoWidget(),
                              CommentArea(),
                              SizedBox(height: 40),
                              HeadingTextWidget(text: '비슷한 프로젝트 보기'),
                              SizedBox(height: 16),
                              SizedBox(
                                height: 330,
                                child: ListView(
                                  padding: const EdgeInsets.only(right: 20),
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 12.0),
                                      child: ProjectCardWidget(
                                        isRecruiting: true,
                                        imagePath:
                                            'assets/images/project/dog.png',
                                        projectName: '강아지 산책 앱 서비스 팀원 모집',
                                        width: CardWidth.w300,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 12.0),
                                      child: ProjectCardWidget(
                                        isRecruiting: false,
                                        imagePath:
                                            'assets/images/project/human.png',
                                        projectName: '콘텐츠 기반 공연예술 큐레이션 플랫폼',
                                        width: CardWidth.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 64),
                            ],
                          )),
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

class RecruitmentStatus extends StatelessWidget {
  const RecruitmentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              RoleChip(
                label: 'UX/UI 디자이너',
                color: Color(0xFFDBEDDB),
              ),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '0/1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0059FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40),
              SizedBox(
                width: 65,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        // Set border radius
                        border: Border.all(
                          color: Color(0xFF0059FF), // Set border color to red
                          width: 1.0, // Set border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2),
                        child: Text(
                          '지원가능',
                          style: TextStyle(
                            color: Color(0xFF0059FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              RoleChip(
                label: '기획자',
                color: Color(0xFFFDECC8),
              ),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '0/1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0059FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40),
              SizedBox(
                width: 65,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        // Set border radius
                        border: Border.all(
                          color: Color(0xFF0059FF), // Set border color to red
                          width: 1.0, // Set border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2),
                        child: Text(
                          '지원가능',
                          style: TextStyle(
                            color: Color(0xFF0059FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              RoleChip(
                label: '백엔드',
                color: Color(0xFFF4E0E9),
              ),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '0/1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0059FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40),
              SizedBox(
                width: 65,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        // Set border radius
                        border: Border.all(
                          color: Color(0xFF0059FF), // Set border color to red
                          width: 1.0, // Set border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2),
                        child: Text(
                          '지원가능',
                          style: TextStyle(
                            color: Color(0xFF0059FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Container(
                decoration: ShapeDecoration(
                  color: Color(0xFFF3F3F3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                  child: Text(
                    '그래픽 디자이너',
                    style: TextStyle(
                      color: Color(0xFFB3B3B3),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '1/1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40),
              SizedBox(
                width: 65,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        // Set border radius
                        border: Border.all(
                          color: Color(0xFF999999), // Set border color to red
                          width: 1.0, // Set border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2),
                        child: Text(
                          '마감',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Container(
                decoration: ShapeDecoration(
                  color: Color(0xFFF3F3F3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                  child: Text(
                    '프론트엔드',
                    style: TextStyle(
                      color: Color(0xFFB3B3B3),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '1/1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40),
              SizedBox(
                width: 65,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        // Set border radius
                        border: Border.all(
                          color: Color(0xFF999999), // Set border color to red
                          width: 1.0, // Set border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2),
                        child: Text(
                          '마감',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            ToolChipWidget(
              text: 'Figma',
              svgPath: 'assets/images/project/tool_figma.svg',
            ),
            SizedBox(
              width: 11,
            ),
            ToolChipWidget(
              text: 'After Effects',
              svgPath: 'assets/images/project/Aftereffects.svg',
            ),
            SizedBox(
              width: 11,
            ),
            ToolChipWidget(
              text: 'Discord',
              svgPath: 'assets/images/project/discord.svg',
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ToolChipWidget(
              text: 'Flutter',
              svgPath: 'assets/images/project/flutter.svg',
            ),
            SizedBox(
              width: 11,
            ),
            ToolChipWidget(
              text: 'Node.js',
              svgPath: 'assets/images/project/nodejs.svg',
            ),
            SizedBox(
              width: 11,
            ),
            ToolChipWidget(
              text: 'Photoshop',
              svgPath: 'assets/images/project/photoshop.svg',
            ),
          ],
        ),
      ],
    ));
  }
}

class ToolChipWidget extends StatelessWidget {
  const ToolChipWidget({
    super.key,
    required this.svgPath,
    required this.text,
  });

  final String svgPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xFFF3F3F3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Row(
          children: [
            SizedBox(
              width: 16,
              height: 16,
              child: SvgPicture.asset(
                svgPath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 6),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeaderInfoWidget extends StatelessWidget {
  const LeaderInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 46,
                height: 46,
                child: Container(
                  decoration: ShapeDecoration(
                    shape: OvalBorder(),
                    color: Color(0xFFE6E6E6),
                  ),
                ),
              ),
              SizedBox(width: 9),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '직군 분야',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 155,
                height: 48,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Spacer(),
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF0059FF),
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        '팔로우',
                        style: TextStyle(
                          color: Color(0xFF0059FF),
                          fontSize: 14,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Color(0xFF0059FF),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 155,
                height: 48,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Spacer(),
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        '제안하기',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Color(0xFF7F7F7F),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 155,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '3회',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 18,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '프로젝트 진행',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7F7F7F),
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Color(0xFFE6E6E6),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 155,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2회',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 18,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '리더 참여',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7F7F7F),
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Color(0xFFE6E6E6),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 155,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '3개',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 18,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '칭찬 받은 개수',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7F7F7F),
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Color(0xFFE6E6E6),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 155,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '100%',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 18,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '완수율',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7F7F7F),
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Color(0xFFE6E6E6),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '전체 포트폴리오 자세히 보기',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontFamily: 'Pretendard Variable',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 2),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF7F7F7F),
                      size: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class CommentArea extends StatelessWidget {
  const CommentArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingTextWidget(text: '댓글 (200)'),
        SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 36,
              height: 36,
              child: Container(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color(0xFFE6E6E6),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 274,
              height: 36,
              child: Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    '메시지를 입력해 주세요.',
                    style: TextStyle(
                      color: Color(0xFFCCCCCC),
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 15,
                    height: 15,
                    child: Icon(
                      Icons.arrow_upward,
                      color: Color(0xFFCCCCCC),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              decoration: ShapeDecoration(
                color: Color(0xFFF3F3F3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'min ago',
                          style: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Wow! Nice work! 🔥🔥🔥',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '답글 달기',
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 40),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: Color(0xFFCCCCCC),
                            ),
                          ),
                        ),
                        SizedBox(height: 35),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'min ago',
                              style: TextStyle(
                                color: Color(0xFF7F7F7F),
                                fontSize: 14,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '답글 달기',
                          style: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Color(0xFFE6E6E6),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'min ago',
                          style: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit,\n sed do eiusmod tempor incididunt',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '답글 달기',
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 40),
          child: Text(
            '모든 답글 보기',
            style: TextStyle(
              color: Color(0xFF0059FF),
              fontSize: 14,
              fontFamily: 'Pretendard Variable',
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
