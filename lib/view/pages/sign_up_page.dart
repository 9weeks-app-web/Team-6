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
        leading: IconButton(
          onPressed: () {
            router.go('/login');
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
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
                  SizedBox(height: 12),

                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: TextButton(
                      onPressed: () {},
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
                  SizedBox(height: 120),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
