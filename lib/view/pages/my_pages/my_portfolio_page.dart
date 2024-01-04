import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyPortfolioPage extends StatelessWidget {
  const MyPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(
                height: 45,
              ),
              Text(
                '첫 포트폴리오 제작',
                style: DesignTextStyle(
                        color: DesignColor.Neutral,
                        style: DesignStyle.SubTitle_Bold)
                    .textStyle,
                textAlign: TextAlign.center,
              ),
              Text(
                '첫 번째 포트폴리오를 만들어 작품을 선보이고\n피드백과 평가를 받아보세요!',
                style: DesignTextStyle(
                        color: DesignColor.Neutral.shade40,
                        style: DesignStyle.Body)
                    .textStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                '*포트폴리오 업로드는 PC에서만 가능합니다.',
                style: DesignTextStyle(
                        color: DesignColor.Primary, style: DesignStyle.Body)
                    .textStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
