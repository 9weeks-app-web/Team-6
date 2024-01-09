import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/project_widgets/project_card_widget.dart';

class MyProjectDeadLineWidget extends StatelessWidget {
  const MyProjectDeadLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProjectCardWidget(
          isRecruiting: false,
          imagePath: 'assets/images/project/human.png',
          projectName: '콘텐츠 기반 공연예술 큐레이션 플랫폼',
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
              '프로젝트 완료하기',
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
