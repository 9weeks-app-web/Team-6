import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/common_widgets/custom_drop_down_widget.dart';
import 'package:flutter_app/view/widgets/common_widgets/toast_widget.dart';
import 'package:go_router/go_router.dart';

class MyInfoDeleteAccountContentWidget extends StatefulWidget {
  const MyInfoDeleteAccountContentWidget({super.key});

  @override
  State<MyInfoDeleteAccountContentWidget> createState() =>
      _MyInfoDeleteAccountContentWidgetState();
}

class _MyInfoDeleteAccountContentWidgetState
    extends State<MyInfoDeleteAccountContentWidget> {
  String? selectedDropdown;
  List<String> menuList = [
    'UX/UI가 불편해서',
    '광고가 너무 많아서',
    '잘 사용하지 않아서',
    '개인정보가 걱정되서',
    '중복 계정이 존재해서',
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '무엇이 불편하셨나요?',
          style: DesignTextStyle(
                  style: DesignStyle.Label_1_SemiBold,
                  color: DesignColor.Neutral)
              .textStyle,
        ),
        // DropdownButtonFormField(
        //   icon: const Icon(
        //     Icons.expand_more,
        //     color: Color(0xFF2E2E2E),
        //   ),
        //   decoration: InputDecoration(
        //     border: OutlineInputBorder(
        //       borderRadius: const BorderRadius.all(
        //         Radius.circular(8.0),
        //       ),
        //       borderSide: BorderSide(color: DesignColor.Neutral.shade10),
        //     ),
        //     enabledBorder: OutlineInputBorder(
        //       // 활성화되었을 때의 테두리
        //       borderRadius: BorderRadius.circular(8.0),
        //       borderSide: BorderSide(color: DesignColor.Neutral.shade10),
        //     ),
        //     focusedBorder: OutlineInputBorder(
        //       // 포커스를 받았을 때의 테두리
        //       borderRadius: BorderRadius.circular(8.0),
        //       borderSide: BorderSide(color: DesignColor.Neutral.shade10),
        //     ),
        //     hintStyle: DesignTextStyle(
        //       style: DesignStyle.Body,
        //       color: DesignColor.Neutral.shade50,
        //     ).textStyle,
        //     hintText: '무엇이 불편하셨나요?',
        //   ),
        //   value: selectedDropdown,
        // onChanged: (dynamic value) {
        //   setState(() {
        //     selectedDropdown = value ?? '';
        //   });
        // },
        //   items: menuList.map((item) {
        //     return DropdownMenuItem(
        //         value: item,
        //         child: Container(
        //           padding: const EdgeInsets.all(8.0), // 패딩 추가
        //           color: Colors.lightBlue, // 배경색 설정
        //           child: Text(
        //             item,
        //             style: const TextStyle(color: Colors.white), // 텍스트 스타일 설정
        //           ),
        //         ));
        //   }).toList(),
        // ),
        const SizedBox(
          height: 16,
        ),
        CustomDropdownButton(
            hintText: '무엇이 불편하셨나요?',
            items: menuList,
            onChanged: (dynamic value) {
              setState(() {
                selectedDropdown = value ?? '';
              });
            }),
        const SizedBox(
          height: 18,
        ),

        const MyEditFieldWidget(
          fieldHintText: '현재 비밀번호를 입력해주세요.',
          fieldName: '비밀번호 입력',
        ),
        const SizedBox(
          height: 190,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 21.0),
          child: SizedBox(
            width: 320,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: DesignColor.Primary,
                shape: DesignButtonStyle.BorderStyle08,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      insetPadding: EdgeInsets.zero,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        height: 206,
                        width: 320,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '회원탈퇴',
                                style: DesignTextStyle(
                                        style: DesignStyle.SubTitle_Bold,
                                        color: DesignColor.Primary)
                                    .textStyle,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                '정말 탈퇴하시겠습니까?\n회원님의 정보가 삭제됩니다.',
                                style: DesignTextStyle(
                                        style: DesignStyle.Body,
                                        color: DesignColor.Neutral.shade70)
                                    .textStyle,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 120,
                                    height: 46,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor:
                                            DesignColor.Primary.shade10,
                                        shape: DesignButtonStyle.BorderStyle04,
                                      ),
                                      onPressed: () {
                                        context.pop();
                                      },
                                      child: Text(
                                        '아니오',
                                        style: DesignTextStyle(
                                                style: DesignStyle
                                                    .Label_1_SemiBold,
                                                color:
                                                    DesignColor.Neutral.shade50)
                                            .textStyle,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  SizedBox(
                                    width: 120,
                                    height: 46,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: DesignColor.Primary,
                                        shape: DesignButtonStyle.BorderStyle04,
                                      ),
                                      onPressed: () {
                                        context.pop();
                                        showToast(context, '탈퇴가 성공적으로 되었습니다.');
                                      },
                                      child: Text(
                                        '탈퇴하기',
                                        style: DesignTextStyle(
                                                style: DesignStyle
                                                    .Label_1_SemiBold,
                                                color: Colors.white)
                                            .textStyle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                    // Dialog(
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(8.0)),
                    //   child: const SizedBox(
                    //     height: 200,
                    //     width: 360, // 너비 조정
                    //     child: AlertDialog(
                    //       title: Text(
                    //         '회원탈퇴',
                    //         style: DesignTextStyle(
                    //                 style: DesignStyle.SubTitle_Bold,
                    //                 color: DesignColor.Primary)
                    //             .textStyle,
                    //       ),
                    //       content: Text(
                    //         '정말 탈퇴하시겠습니까?\n회원님의 정보가 삭제됩니다.',
                    //         style: DesignTextStyle(
                    //                 style: DesignStyle.Body,
                    //                 color: DesignColor.Neutral.shade70)
                    //             .textStyle,
                    //       ),
                    //       actions: [
                    //         SizedBox(
                    //           width: 120,
                    //           height: 46,
                    //           child: ElevatedButton(
                    //             style: ElevatedButton.styleFrom(
                    //               elevation: 0,
                    //               backgroundColor: DesignColor.Primary.shade10,
                    //               shape: DesignButtonStyle.BorderStyle04,
                    //             ),
                    //             onPressed: () {},
                    //             child: Text(
                    //               '아니오',
                    //               style: DesignTextStyle(
                    //                       style: DesignStyle.Label_1_SemiBold,
                    //                       color: DesignColor.Neutral.shade50)
                    //                   .textStyle,
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           width: 120,
                    //           height: 46,
                    //           child: ElevatedButton(
                    //             style: ElevatedButton.styleFrom(
                    //               elevation: 0,
                    //               backgroundColor: DesignColor.Primary,
                    //               shape: DesignButtonStyle.BorderStyle04,
                    //             ),
                    //             onPressed: () {},
                    //             child: Text(
                    //               '탈퇴하기',
                    //               style: DesignTextStyle(
                    //                       style: DesignStyle.Label_1_SemiBold,
                    //                       color: Colors.white)
                    //                   .textStyle,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // );
                  },
                );

                //showToast(context, '탈퇴가 완료되었습니다!');
              },
              child: Text(
                '탈퇴하기',
                style: DesignTextStyle(
                        color: Colors.white,
                        style: DesignStyle.Label_2_SemiBold)
                    .textStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyEditFieldWidget extends StatelessWidget {
  final String fieldName;
  final String fieldHintText;
  const MyEditFieldWidget({
    Key? key,
    required this.fieldName,
    required this.fieldHintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            fieldName,
            style: DesignTextStyle(
                    color: DesignColor.Neutral,
                    style: DesignStyle.Label_1_SemiBold)
                .textStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: DesignColor.Neutral.shade10),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: DesignColor.Neutral.shade10),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: fieldHintText,
                  hintStyle: DesignTextStyle(
                          style: DesignStyle.Body,
                          color: DesignColor.Neutral.shade50)
                      .textStyle,
                  contentPadding: const EdgeInsets.all(16.0)),
            ),
          ),
        ),
      ],
    );
  }
}
