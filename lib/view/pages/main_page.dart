import 'package:flutter/material.dart';

import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/portfolio_widgets/portfolio_card_widget.dart'
    as Portfolio;
import 'package:flutter_app/view/widgets/project_widgets/project_card_widget.dart'
    as Project;

bool _dropdownVisible = false;

class Category {
  final String name;
  final List<SubCategory> subCategories;

  Category(this.name, this.subCategories);
}

class SubCategory {
  final String name;

  SubCategory(this.name);
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map<String, bool> categoryVisibilityMap = {};
  final int _currentIndex = 0;
  List<String> imagePaths = [
    'assets/images/main/main1.png',
    'assets/images/main/main2.png',
    'assets/images/main/main3.png',
    'assets/images/main/main4.png',
  ];

  List<String> selectedCategories = [];
  List<Category> categories = [
    Category('디자인', [
      SubCategory('영상·모션그래픽'),
      SubCategory('제품·패키지 디자인'),
      SubCategory('브랜딩·편집 디자인'),
      SubCategory('포토그래피'),
      SubCategory('UX·UI 디자인'),
      SubCategory('건축·인테리어'),
      SubCategory('그래픽 디자인'),
      SubCategory('타이포그래피'),
      SubCategory('캐릭터 디자인'),
      SubCategory('공예 디자인'),
    ]),
    Category('기획', [
      SubCategory('기획1'),
      SubCategory('기획2'),
    ]),
  ];
  List<String> selectedSortOptions = [
    '인기순',
    '최신순',
  ];

  String selectedSortOption = '인기순';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title: const HeaderWidget(),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: SizedBox(
            width: screenSize.width, // 전체 화면 너비
            child: Column(
              children: [
                SizedBox(
                  height: 200.0, // 이미지 높이 조절
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: const Color(0xFFD9D9D9),
                        width: 360.0,
                        height: 200.0,
                        child: Image.asset(
                          imagePaths[index % imagePaths.length],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        categoryVisibilityMap['디자인'] =
                            !(categoryVisibilityMap['디자인'] ?? false);
                        categoryVisibilityMap['기획'] =
                            !(categoryVisibilityMap['기획'] ?? false);
                        _dropdownVisible = !_dropdownVisible; // 토글 추가
                      });
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.zero), // 패딩을 제거하거나 필요에 따라 조절
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xFFCCCCCC),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    child: Container(
                      width: 111,
                      height: 36,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 8),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '카테고리',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w600,
                              height: 0.07,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Icon(
                            _dropdownVisible
                                ? Icons.expand_less
                                : Icons.expand_more,
                            size: 24, // 아이콘 크기를 24로 설정
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: Visibility(
                            visible: !_dropdownVisible,
                            child: _buildSelectedCategories(),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 16, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '오늘의 #스팩폴리오',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Container(
                                width: 58,
                                height: 22,
                                padding: const EdgeInsets.all(4),
                                child: DropdownButton<String>(
                                  value: selectedSortOption,
                                  icon: Icon(
                                    _dropdownVisible
                                        ? Icons.arrow_drop_up
                                        : Icons.arrow_drop_down,
                                    size: 16.5,
                                    color: Colors.black,
                                  ),
                                  iconSize: 14,
                                  elevation: 16,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard Variable',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  underline: Container(
                                    height: 0,
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedSortOption = newValue!;
                                    });
                                  },
                                  items: <String>['인기순', '최신순']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          color: Color(0xFF272727),
                                          fontSize: 12,
                                          fontFamily: 'Pretendard Variable',
                                          fontWeight: FontWeight.w700,
                                          height: 0.8, // 이 부분을 0.08에서 0.8로 수정
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Portfolio.PortfolioCard(
                          index: 0,
                          width: Portfolio.CardWidth.wMax,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Portfolio.PortfolioCard(
                          index: 1,
                          width: Portfolio.CardWidth.wMax,
                        ),
                      ],
                    ),
                    if (_dropdownVisible)
                      Column(
                        children: [
                          _buildMultiLevelDropdown(),
                          Container(
                            width: 320,
                            height: 72,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFE6E6E6),
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Container(
                                width: 288,
                                height: 40,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 100),
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF0059FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      categoryVisibilityMap['디자인'] =
                                          !(categoryVisibilityMap['디자인'] ??
                                              false);
                                      categoryVisibilityMap['기획'] =
                                          !(categoryVisibilityMap['기획'] ??
                                              false);
                                      _dropdownVisible = !_dropdownVisible;
                                    });
                                  },
                                  child: const Center(
                                    child: Text(
                                      '적용하기',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Pretendard Variable',
                                        fontWeight: FontWeight.w600,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    '요즘 뜨는 포지션',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 320,
                  height: 188,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFFDECC8)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 320,
                        height: 80,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFDECC8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 24,
                              margin: const EdgeInsets.only(top: 16, left: 24),
                              child: const Text(
                                '서비스 기획자',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 18,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 24, bottom: 20),
                              child: const Text(
                                '지금 112개의 채용공고가 올라왔어요!',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(13, 19, 13, 23),
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: SizedBox(
                                width: 40,
                                height: 27,
                                child: Image.asset(
                                  "assets/images/main/position_01.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: SizedBox(
                                width: 40,
                                height: 27,
                                child: Image.asset(
                                  "assets/images/main/position_02.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: SizedBox(
                                width: 40,
                                height: 27,
                                child: Image.asset(
                                  "assets/images/main/position_03.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3F3F3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Text(
                                '더보기',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0.07,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 320,
                  height: 188,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFDBEDDB)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 320,
                        height: 80,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFDBEDDB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 24,
                              margin: const EdgeInsets.only(top: 16, left: 24),
                              child: const Text(
                                '영상·모션그래픽',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 18,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 24, bottom: 20),
                              child: const Text(
                                '지금 18개의 채용공고가 올라왔어요!',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(13, 19, 13, 23),
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/main/position_04.png",
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/main/position_05.png",
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/main/position_06.png",
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3F3F3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Text(
                                '더보기',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0.07,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 320,
                  height: 188,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFDBEDDB)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 320,
                        height: 80,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFDBEDDB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 24,
                              margin: const EdgeInsets.only(top: 16, left: 24),
                              child: const Text(
                                '웹 디자인',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 18,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 24, bottom: 20),
                              child: const Text(
                                '지금 68개의 채용공고가 올라왔어요!',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(13, 19, 13, 23),
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/main/position_07.png",
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/main/position_08.png",
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/main/position_09.png",
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 64,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3F3F3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Text(
                                '더보기',
                                style: TextStyle(
                                  color: Color(0xFF020202),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                  height: 0.07,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 68,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Text(
                          '모여봐요, 사이드 프로젝트의 숲',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w700,
                            height: 0.07,
                          ),
                        ),
                      ),
                      Container(
                        width: 58,
                        height: 22,
                        padding: const EdgeInsets.all(4),
                        child: DropdownButton<String>(
                          value: selectedSortOption,
                          icon: Icon(
                            _dropdownVisible
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                            size: 16.5,
                            color: Colors.black,
                          ),
                          iconSize: 14,
                          elevation: 16,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                          ),
                          underline: Container(
                            height: 0,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedSortOption = newValue!;
                            });
                          },
                          items: <String>['인기순', '최신순']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  color: Color(0xFF272727),
                                  fontSize: 12,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w700,
                                  height: 0.8, // 이 부분을 0.08에서 0.8로 수정
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 18, left: 20, right: 20),
                  child: Project.ProjectCardWidget(
                    isRecruiting: true,
                    imagePath: 'assets/images/project/dog.png',
                    projectName: '강아지 산책 앱 서비스 팀원 모집',
                    width: Project.CardWidth.wMax,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Project.ProjectCardWidget(
                    isRecruiting: false,
                    imagePath: 'assets/images/project/human.png',
                    projectName: '콘텐츠 기반 공연예술 큐레이션 플랫폼',
                    width: Project.CardWidth.wMax,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedCategories() {
    if (selectedCategories.isEmpty) {
      return const SizedBox.shrink(); // 또는 return Container(); 등으로 변경 가능
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        margin: const EdgeInsets.only(bottom: 24, top: 16),
        child: Row(
          children: <Widget>[
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              spacing: 8.0,
              runSpacing: 8.0,
              children: selectedCategories.map((category) {
                return Container(
                  padding: const EdgeInsets.only(
                      top: 8, left: 8, right: 12, bottom: 8),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE6E6E6),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategories.remove(category);
                          });
                        },
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFE6E6E6),
                              shape: OvalBorder(),
                            ),
                            child: const Icon(Icons.clear,
                                color: Colors.black, size: 18.0)),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        category,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMultiLevelDropdown() {
    return MultiLevelDropdownWidget(
      categories: categories,
      selectedCategories: selectedCategories,
      onCategoriesChanged: (List<String> newSelectedCategories) {
        setState(() {
          selectedCategories = newSelectedCategories;
        });
      },
      dropdownVisible: _dropdownVisible,
    );
  }
}

class MultiLevelDropdownWidget extends StatefulWidget {
  final List<Category> categories;
  final List<String> selectedCategories;
  final Function(List<String>) onCategoriesChanged;
  final bool dropdownVisible; // 새로운 필드 추가

  const MultiLevelDropdownWidget({
    super.key,
    required this.categories,
    required this.selectedCategories,
    required this.onCategoriesChanged,
    required this.dropdownVisible,
  });

  @override
  _MultiLevelDropdownWidgetState createState() =>
      _MultiLevelDropdownWidgetState();
}

class _MultiLevelDropdownWidgetState extends State<MultiLevelDropdownWidget> {
  Map<String, bool> categoryExpansionMap = {};

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.dropdownVisible,
      child: Container(
        margin: const EdgeInsets.only(top: 12, left: 20, right: 20),
        width: 320,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: Color(0xFFE6E6E6),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.categories.map((category) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          // 대분류를 토글하여 소분류가 나타나거나 숨겨지도록 함
                          categoryExpansionMap[category.name] =
                              !(categoryExpansionMap[category.name] ?? false);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              category.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w600,
                                height: 0.09,
                              ),
                            ),
                            Icon(
                              categoryExpansionMap[category.name] ?? false
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              size: 24,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    if (categoryExpansionMap[category.name] ?? false)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 14),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: (category.subCategories.length / 2).ceil(),
                          itemBuilder: (context, index) {
                            final startIndex = index * 2;
                            final endIndex = (index + 1) * 2;
                            final subCategories =
                                category.subCategories.sublist(
                              startIndex,
                              endIndex.clamp(0, category.subCategories.length),
                            );
                            return Row(
                              children: subCategories.map((subCategory) {
                                final fullCategory = subCategory.name;
                                final isSelected = widget.selectedCategories
                                    .contains(fullCategory);
                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  width: 145.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: isSelected,
                                        onChanged: (value) {
                                          setState(() {
                                            if (value!) {
                                              widget.selectedCategories
                                                  .add(fullCategory);
                                            } else {
                                              widget.selectedCategories
                                                  .remove(fullCategory);
                                            }
                                            widget.onCategoriesChanged(
                                                widget.selectedCategories);
                                          });
                                        },
                                        activeColor: isSelected
                                            ? const Color(0xFF0059FF)
                                            : const Color(0xFF0059FF),
                                        side: const BorderSide(
                                            color: Color(0xFFE6E6E6)),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        visualDensity: VisualDensity.compact,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            String fullCategory =
                                                subCategory.name;
                                            if (widget.selectedCategories
                                                .contains(fullCategory)) {
                                              widget.selectedCategories
                                                  .remove(fullCategory);
                                            } else {
                                              widget.selectedCategories
                                                  .add(fullCategory);
                                            }
                                            widget.onCategoriesChanged(
                                                widget.selectedCategories);
                                          });
                                        },
                                        child: Text(
                                          subCategory.name,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Pretendard Variable',
                                            fontWeight: FontWeight.w600,
                                            color: isSelected
                                                ? const Color(0xFF0059FF)
                                                : const Color(0xFF333333),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            );
                          },
                        ),
                      ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
