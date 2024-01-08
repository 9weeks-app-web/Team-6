import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  bool _isPortfolioSelected = true;
  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
