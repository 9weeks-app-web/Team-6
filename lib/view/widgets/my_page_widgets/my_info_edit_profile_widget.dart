import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyInfoEditProfileWidget extends StatelessWidget {
  const MyInfoEditProfileWidget({super.key});
  final double profileHeight = 100;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipOval(
            child: Container(
              height: profileHeight,
              width: profileHeight,
              decoration: const BoxDecoration(color: Colors.black),
              child: Image.asset('assets/images/portfolio/avatar.png',
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 155,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: DesignColor.Primary.shade10,
                    shape: DesignButtonStyle.BorderStyle04,
                  ),
                  onPressed: () {},
                  child: Text(
                    '사진 업로드',
                    style: DesignTextStyle(
                            color: DesignColor.Primary,
                            style: DesignStyle.Label_2_SemiBold)
                        .textStyle,
                  ),
                ),
              ),
              SizedBox(
                width: 155,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: BorderSide(
                      width: 1.0,
                      color: DesignColor.Neutral.shade10,
                    ),
                    shape: DesignButtonStyle.BorderStyle04,
                  ),
                  onPressed: () {},
                  child: Text(
                    '프로필 사진 제거',
                    style: DesignTextStyle(
                            color: DesignColor.Neutral.shade40,
                            style: DesignStyle.Label_2_SemiBold)
                        .textStyle,
                  ),
                ),
              ),
              Text(
                '20MB 이내의 이미지 파일을 \n업로드 해주세요.',
                style: DesignTextStyle(
                        style: DesignStyle.Caption_1,
                        color: DesignColor.Neutral)
                    .textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
