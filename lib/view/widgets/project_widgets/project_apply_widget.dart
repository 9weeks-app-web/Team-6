import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/common_widgets/custom_drop_down_widget.dart';
import 'package:flutter_app/view/widgets/common_widgets/toast_widget.dart';
import 'package:go_router/go_router.dart';

class ProjectApplyWidget extends StatefulWidget {
  const ProjectApplyWidget({super.key});

  @override
  State<ProjectApplyWidget> createState() => _ProjectApplyWidgetState();
}

class _ProjectApplyWidgetState extends State<ProjectApplyWidget> {
  String? selectedDropdown;
  List<String> menuList = [
    'UX/UI 디자이너',
    '기획자',
    '백엔드',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 17),
            child: Container(
              height: 4,
              width: 42,
              decoration: BoxDecoration(
                  color: DesignColor.Neutral.shade10,
                  borderRadius: const BorderRadius.all(Radius.circular(2))),
            ),
          ),
          const Divider(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              '프로젝트에 지원하기',
              style: DesignTextStyle(
                      color: DesignColor.Neutral, style: DesignStyle.Body_Bold)
                  .textStyle,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '지원직군',
                  style: DesignTextStyle(
                          color: DesignColor.Neutral,
                          style: DesignStyle.Body_SemiBold)
                      .textStyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomDropdownButton(
                    items: menuList,
                    onChanged: (dynamic value) {
                      setState(() {
                        selectedDropdown = value ?? '';
                      });
                    },
                    hintText: '지원 직군을 선택해 주세요.'),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '지원 사유',
                  style: DesignTextStyle(
                          color: DesignColor.Neutral,
                          style: DesignStyle.Body_SemiBold)
                      .textStyle,
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 218,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: DesignColor.Neutral.shade10,
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: '200자 이내로 작성하여 주세요.',
                        hintStyle: DesignTextStyle(
                                color: DesignColor.Neutral.shade40,
                                style: DesignStyle.Body)
                            .textStyle,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '유의 사항',
                  style: DesignTextStyle(
                          color: DesignColor.Neutral,
                          style: DesignStyle.Body_SemiBold)
                      .textStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '• 프로젝트 리더에게 가입하신 이메일 정보가 제공됩니다.\n',
                        style: DesignTextStyle(
                                color: DesignColor.Neutral.shade50,
                                style: DesignStyle.Caption_1)
                            .textStyle,
                      ),
                      TextSpan(
                        text: '• 자기소개, 활동지역, 기술 등 리더가 쉽게 파악할 수 있게 작성해주세요.\n',
                        style: DesignTextStyle(
                                color: DesignColor.Neutral.shade50,
                                style: DesignStyle.Caption_1)
                            .textStyle,
                      ),
                      TextSpan(
                        text: '• 리더가 14일동안 승인하지 않으면 자동 취소됩니다.\n',
                        style: DesignTextStyle(
                                color: DesignColor.Neutral.shade50,
                                style: DesignStyle.Caption_1)
                            .textStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 320,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      context.pop();
                      showToast(context, '성공적으로 지원되었습니다.');
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
                      '지원하기',
                      style: DesignTextStyle(
                              color: Colors.white,
                              style: DesignStyle.Label_1_SemiBold)
                          .textStyle,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
