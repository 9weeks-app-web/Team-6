import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';
import 'package:flutter_app/view/widgets/user_info_widget/custom_text_form_field.dart';
import 'package:flutter_app/view/widgets/user_info_widget/title_text_widget.dart';

class FindPwDonePage extends StatelessWidget {
  const FindPwDonePage({super.key});

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
          '비밀번호 변경하기',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  CustomTitleText(text: '비밀번호 입력'),
                  SizedBox(height: 12),
                  CustomTextFormField(
                    hintText: '새 비밀번호',
                    obscureText: true,
                  ),
                  SizedBox(height: 12),
                  Text(
                    '(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10~16자)',
                    style: TextStyle(
                      color: Color(0xFF7F7F7F),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 12),
                  CustomTextFormField(
                    hintText: '새 비밀번호 확인',
                    obscureText: true,
                  ),
                  SizedBox(height: 300),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: TextButton(
                      onPressed: () {
                        router.go('/login');
                      },
                      child: Text(
                        '확인',
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
            ),
          ),
        ),
      ),
    );
  }
}
