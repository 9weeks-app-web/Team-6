// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/common_widgets/toast_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

const double textFieldWidth = 320;

class MyInfoEditContentWidget extends StatefulWidget {
  const MyInfoEditContentWidget({super.key});

  @override
  State<MyInfoEditContentWidget> createState() =>
      _MyInfoEditContentWidgetState();
}

class _MyInfoEditContentWidgetState extends State<MyInfoEditContentWidget> {
  bool? isChecked = false;
  late FToast fToast;
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
    fToast.init(context);
  }

  List<Map<String, dynamic>> interests = [
    {
      'field': '서비스 기획',
      'isChecked': false,
    },
    {
      'field': 'UX·UI 디자인',
      'isChecked': false,
    },
    {
      'field': '영상·모션그래픽',
      'isChecked': false,
    },
    {
      'field': '브랜딩·편집 디자인',
      'isChecked': false,
    },
    {
      'field': '타이포그래피',
      'isChecked': false,
    },
    {
      'field': '캐릭터 디자인',
      'isChecked': false,
    },
  ];

  List<Map<String, dynamic>> proposes = [
    {
      'field': '채용 제안',
      'isChecked': false,
    },
    {
      'field': '의견 제안',
      'isChecked': false,
    },
    {
      'field': '프로젝트 제안',
      'isChecked': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const MyEditFieldWidget(
          fieldName: '이름',
          fieldHintText: '이름',
        ),
        const SizedBox(
          height: 12,
        ),
        const MyPhoneEditFieldWidget(
          fieldName: '연락처 수정',
          fieldHintText: '휴대폰 번호',
        ),
        const MyEditFieldWidget(
          fieldName: '스팩폴리오 URL',
          fieldHintText: 'sfacfolio.kr/id',
        ),
        const SizedBox(
          height: 12,
        ),
        const MyEditFieldWidget(
          fieldName: '닉네임',
          fieldHintText: '닉네임',
        ),
        const SizedBox(
          height: 12,
        ),
        const MyEditFieldWidget(
          fieldName: '소개',
          fieldHintText: '소개를 입력해주세요.',
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: textFieldWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '관심 분야',
                  style: DesignTextStyle(
                          color: DesignColor.Neutral,
                          style: DesignStyle.Label_1_SemiBold)
                      .textStyle,
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: interests.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Checkbox(
                        value: interests[index]['isChecked'],
                        activeColor: DesignColor.Primary.shade80,
                        checkColor: Colors.white,
                        onChanged: (bool? value) {
                          setState(() {
                            interests[index]['isChecked'] = value!;
                          });
                        },
                      ),
                      Text(interests[index]['field']),
                    ],
                  );
                },
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: textFieldWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '제안 허용',
                  style: DesignTextStyle(
                          color: DesignColor.Neutral,
                          style: DesignStyle.Label_1_SemiBold)
                      .textStyle,
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: proposes.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Checkbox(
                        value: proposes[index]['isChecked'],
                        activeColor: DesignColor.Primary.shade80,
                        checkColor: Colors.white,
                        onChanged: (bool? value) {
                          setState(() {
                            proposes[index]['isChecked'] = value!;
                          });
                        },
                      ),
                      Text(proposes[index]['field']),
                    ],
                  );
                },
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 45.0),
          child: SizedBox(
            width: textFieldWidth,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: DesignColor.Primary,
                shape: DesignButtonStyle.BorderStyle08,
              ),
              onPressed: () {
                showToast(context, '저장되었습니다!');
              },
              child: Text(
                '저장하기',
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
            width: textFieldWidth,
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

class MyPhoneEditFieldWidget extends StatelessWidget {
  final String fieldName;
  final String fieldHintText;
  const MyPhoneEditFieldWidget({
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
            '연락처 수정',
            style: DesignTextStyle(
                    color: DesignColor.Neutral,
                    style: DesignStyle.Label_1_SemiBold)
                .textStyle,
          ),
        ),
        SizedBox(
          width: textFieldWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  width: 236,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: DesignColor.Neutral.shade10),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: DesignColor.Neutral.shade10),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: '휴대폰 번호',
                        hintStyle: DesignTextStyle(
                                style: DesignStyle.Body,
                                color: DesignColor.Neutral.shade50)
                            .textStyle,
                        contentPadding: const EdgeInsets.all(16.0)),
                  ),
                ),
              ),
              SizedBox(
                width: 74,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: DesignColor.Neutral.shade10,
                    shape: DesignButtonStyle.BorderStyle05,
                  ),
                  onPressed: () {},
                  child: Text(
                    '변경하기',
                    style: DesignTextStyle(
                            color: DesignColor.Neutral.shade50,
                            style: DesignStyle.Label_2_SemiBold)
                        .textStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
