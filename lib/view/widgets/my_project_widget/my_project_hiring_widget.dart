import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/project_widgets/project_card_widget.dart';

class MyProjectHiringWidget extends StatelessWidget {
  const MyProjectHiringWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProjectCardWidget(
          isRecruiting: true,
          imagePath: 'assets/images/project/dog.png',
          projectName: '강아지 산책 앱 서비스 팀원 모집',
          width: CardWidth.wMax,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 320,
          height: 54,
          child: ElevatedButton(
            onPressed: () {
              // 버튼이 눌렸을 때 실행할 로직
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: DesignColor.Primary, // 버튼 텍스트 색상
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0, // 그림자 제거
            ),
            child: Text(
              '모집완료하기',
              style: DesignTextStyle(
                      color: Colors.white, style: DesignStyle.Label_1_SemiBold)
                  .textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
