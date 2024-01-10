import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';
import 'package:flutter_app/view/widgets/common_widgets/custom_drop_down_widget.dart';
import 'package:flutter_app/view/widgets/user_info_widget/custom_text_form_field.dart';
import 'package:flutter_app/view/widgets/user_info_widget/title_text_widget.dart';

List<String> menuList = [
  'SKT',
  'KT',
  'LG U+',
  '알뜰폰 SKT',
  '알뜰폰 KT',
  '알뜰폰 LG U+',
];

class FindIdPage extends StatefulWidget {
  const FindIdPage({super.key});

  @override
  State<FindIdPage> createState() => _FindIdPageState();
}

class _FindIdPageState extends State<FindIdPage> {
  String? selectedDropdown;

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
          '아이디찾기',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: 740,
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
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: TextButton(
                      onPressed: () {
                        router.go('/findidresult');
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
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
