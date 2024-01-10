import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(PortfolioProjectPage());
}

class PortfolioProjectPage extends StatefulWidget {
  const PortfolioProjectPage({Key? key}) : super(key: key);

  @override
  State<PortfolioProjectPage> createState() => _PortfolioProjectPageState();
}

class _PortfolioProjectPageState extends State<PortfolioProjectPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 360,
                height: 835,
                decoration: BoxDecoration(color: Color(0xFF333333)),
              ),
              Container(
                height: 13,
                color: Color(0xFFE6E6E6),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 85.08),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(),
                            color: Color(0xFFE6E6E6),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Project',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 42,
                    ),
                    Text(
                      'YYYY.MM.DD | 직군 | 분야',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Pretendard Variable',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.visibility_outlined,
                          size: 24,
                          color: Color(0xFF999999),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "2.3K",
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                            height: 0.11,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.favorite_outline,
                          size: 24,
                          color: Color(0xFF999999),
                        ),
                        Text(
                          "18",
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                            height: 0.11,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.message_outlined,
                          size: 24,
                          color: Color(0xFF999999),
                        ),
                        Text(
                          "200",
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                            height: 0.11,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Icon(
                      Icons.more_horiz,
                      size: 24,
                    ),
                    SizedBox(
                      height: 42,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      child: Text(
                        '소유자',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontSize: 14,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w600,
                          height: 0.11,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(),
                            color: Color(0xFFE6E6E6),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(155, 48),
                            backgroundColor: Color(0xFF0059FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 24,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '팔로우',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(155, 48),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mail,
                                size: 24,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '제안하기',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard Variable',
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '모든 작업 목록',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 155,
                          height: 155,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Image.asset("assets/images/portfolio/1.png"),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.00, -1.00),
                                    end: Alignment(0, 1),
                                    colors: [
                                      Color(0x00020202),
                                      Color(0xD3020202)
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 12.96,
                                left: 8.28,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Project',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.03,
                                        fontFamily: 'Pretendard Variable',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Name',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.02,
                                        fontFamily: 'Pretendard Variable',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 155,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Stack(
                            children: [
                              Image.asset("assets/images/portfolio/16.png"),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.00, -1.00),
                                    end: Alignment(0, 1),
                                    colors: [
                                      Color(0x00020202),
                                      Color(0xD3020202)
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 12.96,
                                left: 8.28,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Project',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.03,
                                        fontFamily: 'Pretendard Variable',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Name',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.02,
                                        fontFamily: 'Pretendard Variable',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Text(
                  '댓글 (200)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontFamily: 'Pretendard Variable',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 36),
                child: Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(),
                        color: Color(0xFFF3F3F3),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 274,
                      height: 36,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F3F3),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFE6E6E6)),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 14, top: 6, bottom: 6),
                          border: InputBorder.none,
                          hintText: '메시지를 입력해 주세요.',
                          hintStyle: TextStyle(
                            color: Color(0xFFCCCCCC),
                            fontSize: 16,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: Icon(
                            Icons.arrow_upward,
                            size: 30,
                            color: Color(0xFFCCCCCC),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(),
                        color: Color(0xFFF3F3F3),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
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
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '답글 달기',
                          style: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 60, top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(),
                        color: Color(0xFFCCCCCC),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
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
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '답글 달기',
                          style: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(),
                        color: Color(0xFFF3F3F3),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Pretendard Variable',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
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
                        Container(
                          width: 279,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '답글 달기',
                          style: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 14,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 60, top: 10, bottom: 10, right: 68),
                child: SizedBox(
                  width: 232,
                  child: Text(
                    '모든 댓글 보기',
                    style: TextStyle(
                      color: Color(0xFF0059FF),
                      fontSize: 14,
                      fontFamily: 'Pretendard Variable',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Text(
                  '작업 도구',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontFamily: 'Pretendard Variable',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 26,
                      padding: const EdgeInsets.all(7),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/portfolio/figma.svg",
                            width: 13,
                            height: 13,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Figma',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 26,
                      padding: const EdgeInsets.all(7),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/portfolio/photoshop.svg",
                            width: 13,
                            height: 13,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Photoshop',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 26,
                      padding: const EdgeInsets.all(7),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/portfolio/aftereffects.svg",
                            width: 13,
                            height: 13,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Aftereffects',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard Variable',
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Text(
                  '태그',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontFamily: 'Pretendard Variable',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 26,
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 9),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'ux',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w600,
                          height: 0.8,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 26,
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 9),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'ui',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w600,
                          height: 0.8,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 26,
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 9),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'ui design',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w600,
                          height: 0.8,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 26,
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 9),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'user interface',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w600,
                          height: 0.8,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 26,
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 9),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'ux/ui',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w600,
                          height: 0.8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 75.08,
              ),
            ],
          ),
        ),
        floatingActionButton:
            ScrollAwareFab(scrollController: _scrollController),
      ),
    );
  }
}

class ScrollAwareFab extends StatefulWidget {
  final ScrollController scrollController;

  ScrollAwareFab({required this.scrollController});

  @override
  _ScrollAwareFabState createState() => _ScrollAwareFabState();
}

class _ScrollAwareFabState extends State<ScrollAwareFab> {
  late ScrollController _scrollController;
  bool _isFabExtended1 = false;
  bool _isFabExtended2 = false;
  bool _isFabExtended3 = false;
  bool _isFabExtended4 = false;
  bool _isFabExtended5 = false;
  List<bool> _isVisibleList = [
    true,
  ]; // 각 버튼의 가시성을 나타내는 리스트
  double _fabOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController;
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    final double maxScroll = _scrollController.position.maxScrollExtent;
    final double offset = _scrollController.offset;
    final double headerThreshold = maxScroll - 1440.36;
    final double changeColorThreshold1 = maxScroll - 1440.36;
    final double changeColorThreshold2 = maxScroll - 1390.36;
    final double changeColorThreshold3 = maxScroll - 1340.36;
    final double changeColorThreshold4 = maxScroll - 1290.36;
    final double threshold = maxScroll - 1240.36;

    setState(() {
      _isVisibleList[0] = offset <= headerThreshold;
      _isFabExtended1 = offset <= changeColorThreshold1;
      _isFabExtended2 = offset <= changeColorThreshold2;
      _isFabExtended3 = offset <= changeColorThreshold3;
      _isFabExtended4 = offset <= changeColorThreshold4;
      _isFabExtended5 = offset <= threshold;
      if (offset <= maxScroll - 1240.36) {
        _fabOffset = maxScroll - 1240.36;
      } else {
        _fabOffset = offset;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 740,
      child: Stack(
        children: [
          if (_isVisibleList[0])
            Positioned(
              left: 36, // Project와 Name의 왼쪽 여백
              bottom: 0, // 아래 정렬
              child: Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(),
                      color: Color(0xFFE6E6E6),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          Positioned(
            right: 0, // 버튼들의 오른쪽 여백
            bottom: _fabOffset - 350, // 아래 정렬
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    child: Icon(
                      Icons.share,
                      color: _isFabExtended4 ? Colors.white : Colors.black,
                    ),
                    elevation: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.folder_open,
                      color: _isFabExtended3 ? Colors.white : Colors.black,
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.mail,
                      color: _isFabExtended2 ? Colors.white : Colors.black,
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 46,
                  height: 46,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      _isFabExtended1 ? Icons.favorite_outline : Icons.favorite,
                      color: _isFabExtended1 ? Colors.black : Colors.white,
                      size: 24,
                    ),
                    shape: OvalBorder(),
                    backgroundColor:
                        _isFabExtended1 ? Colors.white : Color(0xFF0059FF),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0, // X 버튼의 오른쪽 여백
            top: 54, // 위쪽 정렬
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: CircleBorder(),
              ),
              onPressed: () {},
              child: Icon(
                Icons.close,
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
