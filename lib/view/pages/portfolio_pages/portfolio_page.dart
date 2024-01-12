import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/dummy_data/recruit_detail_data.dart';

import 'package:flutter_app/view/router.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/default_recruit_list.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/portfolio_widgets/portfolio_card_widget.dart'
    as portfolio;
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart'
    as recruit;
import 'package:flutter_app/view/widgets/recruit_page_widgets/recruit_card_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';
import 'package:go_router/go_router.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({
    super.key,
  });

  @override
  State<PortfolioPage> createState() =>
      _PortfolioPageState(recruitData: recruitDetailData);
}

class _PortfolioPageState extends State<PortfolioPage> {
  bool showGridView = false;
  List<String> imageUrls = [
    'assets/images/portfolio/ex-thumbnail-L.png',
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
  final List<Map<String, dynamic>> recruitData;
  _PortfolioPageState({required this.recruitData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title: const HeaderWidget(),
      ),
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const SearchBarWidget(
                  hintText: "궁금한 포트폴리오 분야를 검색해주세요",
                ),
              ),
              // Container(
              //   width: 320,
              //   height: 44,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(22),
              //     border: Border.all(width: 1, color: const Color(0xFFCCCCCC)),
              //   ),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       hintText: '궁금한 포트폴리오 분야를 검색해주세요',
              //       hintStyle: TextStyle(
              //         color: Color(0xFFCCCCCC),
              //         fontSize: 12,
              //         fontFamily: 'Pretendard Variable',
              //         fontWeight: FontWeight.w400,
              //       ),
              //       border: InputBorder.none,
              //       suffixIcon: Icon(Icons.search),
              //       contentPadding:
              //           EdgeInsets.only(left: 12, top: 14, bottom: 14),
              //     ),
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(top: 6, bottom: 18, left: 20),
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
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
                            child: Image.asset(
                                "assets/images/portfolio/image1.png"),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'UI/UX',
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
                            child: Image.asset(
                                "assets/images/portfolio/image2.png"),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '그래픽 디자인',
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
                            child: Image.asset(
                                "assets/images/portfolio/image3.png"),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '영상/모션그래픽',
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
                          return portfolio.PortfolioCard(
                            index: index,
                            width: portfolio.CardWidth.w155,
                          );
                        },
                      )
                    : const Column(
                        children: [
                          portfolio.PortfolioCard(
                            index: 0,
                            width: portfolio.CardWidth.wMax,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          portfolio.PortfolioCard(
                            index: 1,
                            width: portfolio.CardWidth.wMax,
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
                      '스팩폴리오 추천, HOT 메이커',
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
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 20, right: 20),
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
                        child: recruit.RecruitCardWidget(
                          recruitData: recruitData[index],
                          type: CardType.minimum,
                        ),
                      ),
                    );
                  },
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
                          return portfolio.PortfolioCard(
                            index: index,
                            width: portfolio.CardWidth.w155,
                          );
                        },
                      )
                    : const Column(
                        children: [
                          portfolio.PortfolioCard(
                            index: 14,
                            width: portfolio.CardWidth.wMax,
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
                      '스팩폴리오 추천, HOT 메이커',
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
                    HotMaker(
                      name: '김민우',
                      job: 'UI/UX 디자인',
                      image1: 'assets/images/portfolio/hotmaker1.png',
                      image2: 'assets/images/portfolio/5.png',
                      image3: 'assets/images/portfolio/6.png',
                      image4: 'assets/images/portfolio/7.png',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    HotMaker(
                      name: '김혜성',
                      job: 'UI/UX 디자인',
                      image1: 'assets/images/portfolio/hotmaker2.png',
                      image2: 'assets/images/portfolio/2.png',
                      image3: 'assets/images/portfolio/15.png',
                      image4: 'assets/images/portfolio/20.png',
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
                          return portfolio.PortfolioCard(
                            index: index,
                            width: portfolio.CardWidth.w155,
                          );
                        },
                      )
                    : const Column(
                        children: [
                          portfolio.PortfolioCard(
                            index: 3,
                            width: portfolio.CardWidth.wMax,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          portfolio.PortfolioCard(
                            index: 16,
                            width: portfolio.CardWidth.wMax,
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
  final String name;
  final String job;
  final String image1;
  final String image2;
  final String image3;
  final String image4;

  const HotMaker({
    Key? key,
    required this.name,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.job,
    required this.image4,
  }) : super(key: key);

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
                child: Image.asset(image1),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    job,
                    style: const TextStyle(
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
                child: Image.asset(image2),
              ),
              Container(
                width: 68,
                height: 68,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE6E6E6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: Image.asset(image3),
              ),
              Container(
                width: 68,
                height: 68,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE6E6E6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: Image.asset(image4),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
