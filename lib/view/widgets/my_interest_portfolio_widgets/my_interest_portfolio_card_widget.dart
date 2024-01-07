import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyInterestPortfolioCardWidget extends StatelessWidget {
  final String title;
  const MyInterestPortfolioCardWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 8.0,
                  color: DesignColor.Neutral.shade10)
            ],
            borderRadius: const BorderRadius.all(Radius.circular(8.0))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/boardimg01.png', fit: BoxFit.cover),
                Column(
                  children: [
                    Image.asset('assets/images/boardimg02.png',
                        fit: BoxFit.cover),
                    const SizedBox(
                      height: 2,
                    ),
                    Image.asset('assets/images/boardimg03.png',
                        fit: BoxFit.cover),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: DesignTextStyle(
                            style: DesignStyle.Body_Bold,
                            color: DesignColor.Neutral)
                        .textStyle,
                  ),
                  Icon(
                    Icons.lock_outline_rounded,
                    color: DesignColor.Neutral.shade40,
                    size: 24,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
