import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// 개발용 테스트 메인 함수.
void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  SvgPicture.asset(
                    'assets/logo/sfac_logo.svg',
                    width: 180,
                  ),
                  SizedBox(height: 50),
                  CustomTextFormField(
                    hintText: "이메일",
                  ),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    hintText: "비밀번호",
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '로그인',
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
                  SizedBox(height: 10),
                  Text(
                    '아이디 찾기 | 비밀번호 찾기 | 회원가입 하기',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SnsDivider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            'SNS 연동 로그인',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SnsDivider(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/Group 1171277220.svg', width: 40,),
                        SizedBox(width: 8),
                        SvgPicture.asset('assets/images/Group 1171277221.svg', width: 40,),
                        SizedBox(width: 8),
                        SvgPicture.asset('assets/images/Group 1171277222.svg', width: 40,),
                        SizedBox(width: 8),
                        SvgPicture.asset('assets/images/Group 1171277223.svg', width: 40,),
                      ],
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

class CustomTextFormField extends StatelessWidget {
  final bool obscureText;
  final String? hintText;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class SnsDivider extends StatelessWidget {
  const SnsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 1,
        color: Color(0xFFE6E6E6),
      ),
          );
  }
}
