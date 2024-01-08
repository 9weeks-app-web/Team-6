import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  final int index;

  const PortfolioCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
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
    return Container(
      width: 320,
      child: Column(
        children: [
          Container(
            width: 320,
            height: 320,
            decoration: BoxDecoration(
              color: const Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrls[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Project',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 32,
                height: 20,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // 첫 번째 원 (왼쪽에 그리기)
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
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
                        decoration: const BoxDecoration(
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
                    SizedBox(
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
                              decoration: const ShapeDecoration(
                                color: Color(0xFFCCCCCC),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
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
                child: const Row(
                  children: [
                    SizedBox(
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
                    SizedBox(
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
    );
  }
}
