import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

enum CardWidth {
  wMax,
  w155,
}

class PortfolioCard extends StatelessWidget {
  final int index;
  final CardWidth width;
  const PortfolioCard({
    super.key,
    required this.index,
    required this.width,
  });

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
    return SizedBox(
      width: width == CardWidth.wMax ? 320 : 155,
      height: width == CardWidth.wMax ? 382 : 234,
      child: Column(
        children: [
          Container(
            width: width == CardWidth.wMax ? 320 : 155,
            height: width == CardWidth.wMax ? 320 : 155,
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
            height: 8,
          ),
          width == CardWidth.wMax
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Project',
                          style: DesignTextStyle(
                                  color: DesignColor.Neutral,
                                  style: DesignStyle.Body_Bold)
                              .textStyle,
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
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFCCCCCC),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Name',
                              style: DesignTextStyle(
                                      color: DesignColor.Neutral,
                                      style: DesignStyle.Body_Bold)
                                  .textStyle,
                            )
                          ],
                        ),
                        const Row(
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
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Project',
                          style: DesignTextStyle(
                                  color: DesignColor.Neutral,
                                  style: DesignStyle.Body_Bold)
                              .textStyle,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFCCCCCC),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Name',
                              style: DesignTextStyle(
                                      color: DesignColor.Neutral,
                                      style: DesignStyle.Body_Bold)
                                  .textStyle,
                            )
                          ],
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
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 24,
                          height: 24,
                          child: Icon(
                            Icons.visibility_outlined,
                            color: Color(0xFF808080),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "918",
                          style: DesignTextStyle(
                                  color: DesignColor.Neutral.shade50,
                                  style: DesignStyle.Label_3_SemiBold)
                              .textStyle,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const SizedBox(
                          width: 24,
                          height: 24,
                          child: Icon(
                            Icons.favorite_outline,
                            color: Color(0xFF808080),
                          ),
                        ),
                        Text(
                          "918",
                          style: DesignTextStyle(
                                  color: DesignColor.Neutral.shade50,
                                  style: DesignStyle.Label_3_SemiBold)
                              .textStyle,
                        )
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
