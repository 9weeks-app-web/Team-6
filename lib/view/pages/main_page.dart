import 'package:flutter/material.dart';
import 'package:flutter_app/view/pages/notice_page.dart';
import 'package:flutter_svg/flutter_svg.dart';


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
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<String> selectedCategories = [];
  List<Category> categories = [
    Category('디자인', [
      SubCategory('영상·모션그래픽'),
      SubCategory('제품·패키지 디자인'),
      SubCategory('브랜딩·편집 디자인'),
      SubCategory('포토그래피'),
      SubCategory('UX·UI 디자인'),
      SubCategory('건축·인테리어 디자인'),
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
  Map<String, bool> categoryVisibilityMap = {};
  bool _dropdownVisible = false;

  String selectedSortOption = '인기순';
  bool _isPortfolioSelected = true;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Container(
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/logo/sfac_logo.svg',
                    width: 77,
                    height: 20,
                    fit: BoxFit.contain,
                    // 원하는 높이 설정
                  ),
                  onPressed: () {
                    print('메인페이지로 이동');
                  },
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isPortfolioSelected = !_isPortfolioSelected;
                    });
                  },
                  child: Container(
                      height: 26,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 26,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: ShapeDecoration(
                              color: _isPortfolioSelected
                                  ? Color(0xFF337AFF)
                                  : Color(0xFFE5EEFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '폴리오',
                                style: TextStyle(
                                  color: _isPortfolioSelected
                                      ? Colors.white
                                      : Color(0xFFB3B3B3),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 26,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: ShapeDecoration(
                              color: !_isPortfolioSelected
                                  ? Color(0xFF337AFF)
                                  : Color(0xFFE5EEFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '로그',
                                style: TextStyle(
                                  color: _isPortfolioSelected
                                      ? Color(0xFFB3B3B3)
                                      : Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => NoticePage()),
                // );
              },
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              width: screenSize.width, // 전체 화면 너비
              child: Column(
                children: [
                  Container(
                    height: 200.0, // 이미지 높이 조절
                    child: PageView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Color(0xFFD9D9D9),
                          width: 360.0, // 이미지 너비 조절
                          height: 200.0, // 이미지 높이 조절
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                        padding: MaterialStateProperty.all(
                            EdgeInsets.zero), // 패딩을 제거하거나 필요에 따라 조절
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Color(0xFFCCCCCC),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      child: Container(
                        width: 107,
                        height: 36,
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '카테고리',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
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
                  if (_dropdownVisible) _buildMultiLevelDropdown(),
                  _buildSelectedCategories(),

                  // if (_dropdownVisible)
                  //   Container(
                  //     // 덮는 컨테이너 설정
                  //     width: double.infinity,
                  //     padding: EdgeInsets.all(16),
                  //     margin: EdgeInsets.only(top: 16),
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(8),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.grey.withOpacity(0.3),
                  //           spreadRadius: 2,
                  //           blurRadius: 4,
                  //           offset: Offset(0, 2),
                  //         ),
                  //       ],
                  //     ),
                  //     child:
                  //         _buildMultiLevelDropdown(), // 아마도 _buildMultiLevelDropdown() 함수를 호출해서 해당 부분을 만들게 될 것
                  //   ),

                  // Expanded(
                  //   child: SingleChildScrollView(
                  //     scrollDirection: Axis.horizontal,
                  //     child: Row(
                  //       children: List.generate(
                  //         selectedCategories.length,
                  //         (index) {
                  //           return Container(
                  //             child: _buildSelectedCategories(),
                  //           );
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
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
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFF3F3F3),
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: DropdownButton<String>(
                            value: selectedSortOption,
                            icon: Icon(
                              _dropdownVisible
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: Colors.black,
                            ),
                            iconSize: 14,
                            elevation: 16,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w600,
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
                                  style: TextStyle(
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
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 320,
                          height: 320,
                          decoration: BoxDecoration(
                            color: Color(0xFFE6E6E6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Project',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              width: 32,
                              height: 20,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  // 첫 번째 원 (왼쪽에 그리기)
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  // 겹치는 부분
                                  Positioned(
                                    right: 12,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFCCCCCC),
                                              shape: OvalBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Pretendard Variable',
                                      fontWeight: FontWeight.w700,
                                      height: 0.09,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Icon(
                                      Icons.visibility_outlined,
                                      color: Color(0xFF808080),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "918",
                                    style: TextStyle(
                                      color: Color(0xFF808080),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: Color(0xFF808080),
                                    ),
                                  ),
                                  Text(
                                    "918",
                                    style: TextStyle(
                                      color: Color(0xFF808080),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 320,
                    //height: 376,
                    padding: const EdgeInsets.only(bottom: 16),
                    margin: EdgeInsets.only(bottom: 20),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 320,
                          height: 240,
                          decoration: BoxDecoration(color: Color(0x7FD9D9D9)),
                        ),
                        Container(
                          //height: 120,
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 308,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 24,
                                            height: 24,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child:
                                                Icon(Icons.visibility_outlined),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            '1234',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Icon(Icons.favorite_border),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '1234',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 12),
                                //height: 72,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 16),
                                      //height: 21,
                                      child: Text(
                                        '포트폴리오 이름',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //height: 19,
                                      child: Text(
                                        '작성자',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
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
                    //height: 376,
                    padding: const EdgeInsets.only(bottom: 16),
                    margin: EdgeInsets.only(bottom: 20),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 320,
                          height: 240,
                          decoration: BoxDecoration(color: Color(0x7FD9D9D9)),
                        ),
                        Container(
                          //height: 120,
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 308,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 24,
                                            height: 24,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child:
                                                Icon(Icons.visibility_outlined),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            '1234',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Icon(Icons.favorite_border),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '1234',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 12),
                                //height: 72,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 16),
                                      //height: 21,
                                      child: Text(
                                        '포트폴리오 이름',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //height: 19,
                                      child: Text(
                                        '작성자',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 4),
                    //width: 173,
                    height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            //width: 129,
                            child: Text(
                          '포트폴리오 더보기',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 49.5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
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
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 320,
                    height: 188,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 320,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Color(0xFFECECEC),
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
                                margin: EdgeInsets.only(top: 16, left: 24),
                                child: Text(
                                  'UX/UI 디자인',
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
                                margin: EdgeInsets.only(left: 24, bottom: 20),
                                child: Text(
                                  '지금 8개의 채용공고가 올라왔어요!',
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
                          margin: EdgeInsets.fromLTRB(13, 19, 13, 23),
                          child: Row(
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF3F3F3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Text(
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
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 320,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Color(0xFFECECEC),
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
                                margin: EdgeInsets.only(top: 16, left: 24),
                                child: Text(
                                  'UX/UI 디자인',
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
                                margin: EdgeInsets.only(left: 24, bottom: 20),
                                child: Text(
                                  '지금 8개의 채용공고가 올라왔어요!',
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
                          margin: EdgeInsets.fromLTRB(13, 19, 13, 23),
                          child: Row(
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF3F3F3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Text(
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
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 320,
                          height: 80,
                          decoration: ShapeDecoration(
                            color: Color(0xFFECECEC),
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
                                margin: EdgeInsets.only(top: 16, left: 24),
                                child: Text(
                                  'UX/UI 디자인',
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
                                margin: EdgeInsets.only(left: 24, bottom: 20),
                                child: Text(
                                  '지금 8개의 채용공고가 올라왔어요!',
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
                          margin: EdgeInsets.fromLTRB(13, 19, 13, 23),
                          child: Row(
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 64,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF3F3F3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Text(
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
                    margin: EdgeInsets.only(right: 20, top: 4),
                    //width: 173,
                    height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            //width: 129,
                            child: Text(
                          '채용 정보 더보기',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 95.5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
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
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFF3F3F3),
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: DropdownButton<String>(
                            value: selectedSortOption,
                            icon: Icon(
                              _dropdownVisible
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: Colors.black,
                            ),
                            iconSize: 14,
                            elevation: 16,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w600,
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
                                  style: TextStyle(
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
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 320,
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.71,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 320,
                          height: 180,
                          decoration: BoxDecoration(color: Color(0x7FD9D9D9)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.71,
                                          strokeAlign:
                                              BorderSide.strokeAlignCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.64),
                                      ),
                                    ),
                                    child: Text(
                                      '오프라인',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.71,
                                          strokeAlign:
                                              BorderSide.strokeAlignCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.64),
                                      ),
                                    ),
                                    child: Text(
                                      '모집중',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '프로젝트 공고 제목',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '2024. 01. 01',
                                style: TextStyle(
                                  color: Color(0xFFCCCCCC),
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
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
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.71,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 320,
                          height: 180,
                          decoration: BoxDecoration(color: Color(0x7FD9D9D9)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.71,
                                          strokeAlign:
                                              BorderSide.strokeAlignCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.64),
                                      ),
                                    ),
                                    child: Text(
                                      '오프라인',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.71,
                                          strokeAlign:
                                              BorderSide.strokeAlignCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.64),
                                      ),
                                    ),
                                    child: Text(
                                      '모집중',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '프로젝트 공고 제목',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '2024. 01. 01',
                                style: TextStyle(
                                  color: Color(0xFFCCCCCC),
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
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
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.71,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 320,
                          height: 180,
                          decoration: BoxDecoration(color: Color(0x7FD9D9D9)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.71,
                                          strokeAlign:
                                              BorderSide.strokeAlignCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.64),
                                      ),
                                    ),
                                    child: Text(
                                      '오프라인',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.71,
                                          strokeAlign:
                                              BorderSide.strokeAlignCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.64),
                                      ),
                                    ),
                                    child: Text(
                                      '모집중',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '프로젝트 공고 제목',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '2024. 01. 01',
                                style: TextStyle(
                                  color: Color(0xFFCCCCCC),
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 4),
                    //width: 173,
                    height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            //width: 129,
                            child: Text(
                          '채용 정보 더보기',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 97,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: '커뮤니티',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.portrait),
              label: '포트폴리오',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: '프로젝트',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '마이',
            ),
          ],
        ),
      ),
    );
  }

  List _widgetOptions = [
    Text(
      '홈',
      style: TextStyle(fontSize: 10, fontFamily: 'Pretendard Variable'),
    ),
    Text(
      '커뮤니티',
      style: TextStyle(fontSize: 10, fontFamily: 'Pretendard Variable'),
    ),
    Text(
      '포트폴리오',
      style: TextStyle(fontSize: 10, fontFamily: 'Pretendard Variable'),
    ),
    Text(
      '프로젝트',
      style: TextStyle(fontSize: 10, fontFamily: 'Pretendard Variable'),
    ),
    Text(
      '마이',
      style: TextStyle(fontSize: 10, fontFamily: 'Pretendard Variable'),
    ),
  ];
  Widget _buildSelectedCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 4),
        margin: EdgeInsets.only(bottom: 24),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: selectedCategories.map((category) {
            return Container(
              padding:
                  const EdgeInsets.only(top: 8, left: 8, right: 12, bottom: 8),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFE6E6E6),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
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
                        decoration: ShapeDecoration(
                          color: Color(0xFFE6E6E6),
                          shape: OvalBorder(),
                        ),
                        child:
                            Icon(Icons.clear, color: Colors.black, size: 18.0)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    category,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                    ),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer, // 추가된 부분
            );
          }).toList(),
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
    );
  }
}

class MultiLevelDropdownWidget extends StatefulWidget {
  final List<Category> categories;
  final List<String> selectedCategories;
  final Function(List<String>) onCategoriesChanged;

  MultiLevelDropdownWidget({
    required this.categories,
    required this.selectedCategories,
    required this.onCategoriesChanged,
  });

  @override
  _MultiLevelDropdownWidgetState createState() =>
      _MultiLevelDropdownWidgetState();
}

class _MultiLevelDropdownWidgetState extends State<MultiLevelDropdownWidget> {
  Map<String, bool> categoryExpansionMap = {};

  @override
  void initState() {
    super.initState();

    // 초기에 모든 대분류를 닫힌 상태로 설정
    for (Category category in widget.categories) {
      categoryExpansionMap[category.name] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      width: 320,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFE6E6E6),
          ),
          borderRadius: BorderRadius.circular(8),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            category.name,
                            style: TextStyle(
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
                  Divider(),
                  if (categoryExpansionMap[category.name] ?? false)
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 14),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: (category.subCategories.length / 2).ceil(),
                        itemBuilder: (context, index) {
                          final startIndex = index * 2;
                          final endIndex = (index + 1) * 2;
                          final subCategories = category.subCategories.sublist(
                            startIndex,
                            endIndex.clamp(0, category.subCategories.length),
                          );
                          return Row(
                            children: subCategories.map((subCategory) {
                              final fullCategory = '${subCategory.name}';
                              final isSelected = widget.selectedCategories
                                  .contains(fullCategory);
                              return Container(
                                width: 145,
                                child: Expanded(
                                  child: Row(
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
                                            ? Color(0xFF0059FF)
                                            : Color(0xFF0059FF),
                                        side: BorderSide(
                                            color: Color(0xFFE6E6E6)),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            String fullCategory =
                                                '${subCategory.name}';
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
                                            height: 0.07,
                                            color: isSelected
                                                ? Color(0xFF0059FF)
                                                : Color(0xFF333333),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        },
                      ),
                    ),
                  Divider(),
                ],
              );
            }).toList(),
          ),
          InkWell(
            onTap: () {
              setState(() {});

              // 이후에 필요한 다른 작업 수행 가능
              // 예를 들어, 선택한 카테고리에 대한 작업 수행
              print("Selected Categories: ${widget.selectedCategories}");
            },
            child: Container(
              width: 320,
              height: 54,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: ShapeDecoration(
                color: Color(0xFF0059FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '적용하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
