import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';
import 'package:flutter_app/view/widgets/user_info_widget/custom_text_form_field.dart';
import 'package:flutter_app/view/widgets/user_info_widget/title_text_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  CustomTextFormField(
                    hintText: '비밀번호 확인',
                  ),
                  SizedBox(height: 24),
                  CustomTitleText(text: '휴대폰 인증'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
