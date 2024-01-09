import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/portfolio_widgets/portfolio_card_widget.dart';

import 'package:flutter_svg/flutter_svg.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final bool _isPortfolioSelected = true;
  bool showGridView = false;
  List<String> imageUrls = [
    'assets/images/portfolio/1.png',
    'assets/images/portfolio/2.png',
    'assets/images/portfolio/3.png',
    'assets/images/portfolio/4.png',
    'assets/images/portfolio/5.png',
    'assets/images/portfolio/6.png',
    'assets/images/portfolio/7.png',
    'assets/images/portfolio/8.png',
    'assets/images/portfolio/9.png',
    'assets/images/portfolio/10.png',
    'assets/images/portfolio/11.png',
    'assets/images/portfolio/12.png',
    'assets/images/portfolio/13.png',
    'assets/images/portfolio/14.png',
    'assets/images/portfolio/15.png',
    'assets/images/portfolio/16.png',
    'assets/images/portfolio/17.png',
    'assets/images/portfolio/18.png',
    'assets/images/portfolio/19.png',
    'assets/images/portfolio/20.png',
    'assets/images/portfolio/21.png',
    'assets/images/portfolio/22.png',
    'assets/images/portfolio/23.png',
    'assets/images/portfolio/24.png',
    'assets/images/portfolio/25.png',
    'assets/images/portfolio/26.png',
    'assets/images/portfolio/27.png',
    'assets/images/portfolio/28.png',
    'assets/images/portfolio/29.png',
    'assets/images/portfolio/30.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const HeaderWidget(),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Row(
      //     children: [
      //       Container(
      //         child: IconButton(
      //           icon: SvgPicture.asset(
      //             'assets/logo/sfac_logo.svg',
      //             width: 77,
      //             height: 20,
      //             fit: BoxFit.contain,
      //             // 원하는 높이 설정
      //           ),
      //           onPressed: () {
      //             print('메인페이지로 이동');
      //           },
      //         ),
      //       ),
      //       Container(
      //         child: GestureDetector(
      //           onTap: () {
      //             setState(() {
      //               _isPortfolioSelected = !_isPortfolioSelected;
      //             });
      //           },
      //           child: Container(
      //               height: 26,
      //               decoration: ShapeDecoration(
      //                 color: const Color(0xFFF3F3F3),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(14),
      //                 ),
      //               ),
      //               child: Row(
      //                 mainAxisSize: MainAxisSize.min,
      //                 children: [
      //                   Container(
      //                     height: 26,
      //                     padding: const EdgeInsets.symmetric(
      //                       horizontal: 8,
      //                     ),
      //                     decoration: ShapeDecoration(
      //                       color: _isPortfolioSelected
      //                           ? const Color(0xFF337AFF)
      //                           : const Color(0xFFE5EEFF),
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(14),
      //                       ),
      //                     ),
      //                     child: Center(
      //                       child: Text(
      //                         '폴리오',
      //                         style: TextStyle(
      //                           color: _isPortfolioSelected
      //                               ? Colors.white
      //                               : const Color(0xFFB3B3B3),
      //                           fontSize: 14,
      //                           fontFamily: 'Pretendard Variable',
      //                           fontWeight: FontWeight.w600,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     height: 26,
      //                     padding: const EdgeInsets.symmetric(
      //                       horizontal: 8,
      //                     ),
      //                     decoration: ShapeDecoration(
      //                       color: !_isPortfolioSelected
      //                           ? const Color(0xFF337AFF)
      //                           : const Color(0xFFE5EEFF),
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(14),
      //                       ),
      //                     ),
      //                     child: Center(
      //                       child: Text(
      //                         '로그',
      //                         style: TextStyle(
      //                           color: _isPortfolioSelected
      //                               ? const Color(0xFFB3B3B3)
      //                               : Colors.white,
      //                           fontSize: 14,
      //                           fontFamily: 'Pretendard Variable',
      //                           fontWeight: FontWeight.w600,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               )),
      //         ),
      //       ),
      //     ],
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.notifications_none),
      //       onPressed: () {
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => NoticePage()),
      //         // );
      //       },
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 4, bottom: 12, left: 20),
                child: const Text(
                  '스팩폴리오',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Pretendard Variable',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(width: 1, color: const Color(0xFFCCCCCC)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '궁금한 포트폴리오 분야를 검색해주세요',
                    hintStyle: TextStyle(
                      color: Color(0xFFCCCCCC),
                      fontSize: 12,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    contentPadding:
                        EdgeInsets.only(left: 12, top: 14, bottom: 14),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 6, bottom: 18, left: 20),
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFF3F3F3)),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFE6E6E6),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '직군/분야',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w700,
                              height: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFF3F3F3)),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFE6E6E6),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '직군/분야',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w700,
                              height: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFF3F3F3)),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFE6E6E6),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '직군/분야',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w700,
                              height: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFF3F3F3)),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFE6E6E6),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '직군/분야',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w700,
                              height: 0.12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Row(
                        children: [
                          Text("스팩폴리오 픽"),
                          Icon(Icons.expand_more),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.grid_view),
                            onPressed: () {
                              setState(() {
                                showGridView = true;
                              });
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.splitscreen),
                            onPressed: () {
                              setState(() {
                                showGridView = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: showGridView
                    ? GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          childAspectRatio: 155 / 247,
                        ),
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return PortfolioCard(
                            index: index,
                            width: CardWidth.w155,
                          );
                        },
                      )
                    : const Column(
                        children: [
                          PortfolioCard(
                            index: 0,
                            width: CardWidth.wMax,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          PortfolioCard(
                            index: 1,
                            width: CardWidth.wMax,
                          ),
                        ],
                      ),
              ),
              Container(
                width: 360,
                height: 200,
                margin: const EdgeInsets.only(top: 30, bottom: 25),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/main/main3.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 46,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '채용 정보도 스팩폴리오에서!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w700,
                        height: 0.07,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Container(
                height: 238,
                color: Colors.black,
                padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 150,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "직군 채용",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Pretendard Variable',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '회사명',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard Variable',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            width: 200,
                            height: 150,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "직군 채용",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Pretendard Variable',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '회사명',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard Variable',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 42),
                child: showGridView
                    ? GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          childAspectRatio: 155 / 247,
                        ),
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return PortfolioCard(
                            index: index,
                            width: CardWidth.w155,
                          );
                        },
                      )
                    : const Column(
                        children: [
                          PortfolioCard(
                            index: 14,
                            width: CardWidth.wMax,
                          ),
                        ],
                      ),
              ),
              Container(
                width: 320,
                height: 46,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '채용 정보도 스팩폴리오에서!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w700,
                        height: 0.07,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 29, left: 20, right: 20),
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  children: const [
                    HotMaker(),
                    SizedBox(
                      width: 20,
                    ),
                    HotMaker(),
                    SizedBox(
                      width: 20,
                    ),
                    HotMaker(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 42),
                child: showGridView
                    ? GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          childAspectRatio: 155 / 247,
                        ),
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return PortfolioCard(
                            index: index,
                            width: CardWidth.w155,
                          );
                        },
                      )
                    : const Column(
                        children: [
                          PortfolioCard(
                            index: 3,
                            width: CardWidth.wMax,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          PortfolioCard(
                            index: 16,
                            width: CardWidth.wMax,
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HotMaker extends StatelessWidget {
  const HotMaker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 266,
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF3F3F3)),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: OvalBorder(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '직군 ∙ 분야',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 68,
                height: 68,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE6E6E6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Icon(Icons.image_rounded),
              ),
              Container(
                width: 68,
                height: 68,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE6E6E6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Icon(Icons.image_rounded),
              ),
              Container(
                width: 68,
                height: 68,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE6E6E6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Icon(Icons.image_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
