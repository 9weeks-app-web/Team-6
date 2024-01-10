import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';
import 'package:flutter_app/view/widgets/user_info_widget/correction_message_widget.dart';
import 'package:flutter_app/view/widgets/user_info_widget/custom_text_form_field.dart';
import 'package:flutter_app/view/widgets/user_info_widget/title_text_widget.dart';

class SignUpMorePage extends StatefulWidget {
  const SignUpMorePage({super.key});

  @override
  State<SignUpMorePage> createState() => _SignUpMorePageState();
}

class _SignUpMorePageState extends State<SignUpMorePage> {
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
                  CustomTitleText(text: '닉네임'),
                  SizedBox(height: 12),
                  CustomTextFormField(
                    hintText: '내용을 입력해주세요.',
                  ),
                  SizedBox(height: 30),
                  CustomTitleText(text: '관심 분야'),
                  SizedBox(height: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('서비스 기획', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('UX·UI 디자인', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('영상·모션그래픽', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('브랜딩·편집 디자인', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('타이포그래피', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('캐릭터 디자인', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  CustomTitleText(text: '제안 허용'),
                  SizedBox(height: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('채용 제안', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('의견 제안', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text('프로젝트 제안', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: TextButton(
                      onPressed: () {
                        router.go('/signupdone');
                      },
                      child: Text(
                        '완료',
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

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Transform.scale(
        scale: 1.2,
        child: Checkbox(
          side: BorderSide(width: 1.5, color: Colors.grey),
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
