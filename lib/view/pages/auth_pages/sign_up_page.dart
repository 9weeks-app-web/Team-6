import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';
import 'package:flutter_app/view/widgets/common_widgets/custom_drop_down_widget.dart';
import 'package:flutter_app/view/widgets/user_info_widget/correction_message_widget.dart';
import 'package:flutter_app/view/widgets/user_info_widget/custom_text_form_field.dart';
import 'package:flutter_app/view/widgets/user_info_widget/title_text_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _passwordEnableController =
      TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();
  String? selectedDropdown;
  List<String> menuList = [
    'SKT',
    'KT',
    'LG U+',
    '알뜰폰 SKT',
    '알뜰폰 KT',
    '알뜰폰 LG U+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            router.go('/login');
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          '회원가입',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  CustomTitleText(text: '회원정보'),
                  SizedBox(height: 12),
                  CustomTextFormField(
                    hintText: '이름',
                  ),
                  SizedBox(height: 12),
                  CustomTextFormField(
                    hintText: '이메일',
                  ),
                  SizedBox(height: 12),
                  CustomTextFormField(
                    hintText: '비밀번호',
                  ),
                  SizedBox(height: 12),
                  CorrectionMessageTextWidget(
                    text: '사용 가능한 비밀번호입니다.',
                    offstage: false,
                    controller: _passwordEnableController,
                  ),
                  CustomTextFormField(
                    hintText: '비밀번호 확인',
                  ),
                  SizedBox(height: 12),
                  CorrectionMessageTextWidget(
                    text: '비밀번호가 일치합니다.',
                    offstage: false,
                    controller: _passwordConfirmController,
                  ),
                  SizedBox(height: 24),
                  CustomTitleText(text: '휴대폰 인증'),
                  SizedBox(height: 12),
                  CustomDropdownButton(
                      hintText: '통신사 선택',
                      items: menuList,
                      onChanged: (dynamic value) {
                        setState(() {
                          selectedDropdown = value ?? '';
                        });
                      }),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          hintText: '휴대폰 번호',
                        ),
                      ),
                      SizedBox(width: 12),
                      SizedBox(
                        height: 56,
                        width: 74,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '인증요청',
                            style: TextStyle(
                              color: Color(0xFF808080),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFE6E6E6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  CustomTextFormField(
                    hintText: '인증번호 입력',
                  ),
                  SizedBox(height: 27),
                  CustomCheckBoxList(),
                  SizedBox(height: 43),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: TextButton(
                      onPressed: () {
                        router.go('/signupmore');
                      },
                      child: Text(
                        '다음',
                        style: TextStyle(
                          color: Color(0xFF808080),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFE6E6E6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCheckBoxCircle extends StatefulWidget {
  const CustomCheckBoxCircle({
    super.key,
  });

  @override
  State<CustomCheckBoxCircle> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBoxCircle> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Transform.scale(
        scale: 1.2,
        child: Checkbox(
          shape: CircleBorder(),
          side: BorderSide(width: 1.5, color: Colors.grey),
          activeColor: Colors.grey,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ),
    );
  }
}

class CustomCheckBoxText extends StatelessWidget {
  final String text;

  const CustomCheckBoxText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 15));
  }
}

class CustomCheckBoxList extends StatelessWidget {
  const CustomCheckBoxList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CustomCheckBoxCircle(),
              SizedBox(width: 8),
              CustomCheckBoxText(text: '본인인증 약관 전체동의 (필수)'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CustomCheckBoxCircle(),
              SizedBox(width: 8),
              CustomCheckBoxText(text: '개인정보 수집 이용 동의'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CustomCheckBoxCircle(),
              SizedBox(width: 8),
              CustomCheckBoxText(text: '고유식별 정보처리 동의'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CustomCheckBoxCircle(),
              SizedBox(width: 8),
              CustomCheckBoxText(text: '통신사 이용약관동의'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CustomCheckBoxCircle(),
              SizedBox(width: 8),
              CustomCheckBoxText(text: '서비스 이용약관 동의'),
            ],
          ),
        ],
      ),
    );
  }
}
