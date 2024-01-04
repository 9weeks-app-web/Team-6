import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// 개발용 테스트 메인 함수.
void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailErrorController = TextEditingController();
  final TextEditingController _passwordErrorController =
      TextEditingController();
  bool _isEmailValid = true;
  bool _isPasswordValid = true;

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
                    borderError: _isEmailValid,
                    controller: _emailController,
                    hintText: "이메일",
                  ),
                  SizedBox(height: 10),
                  ErrorMessageTextWidget(
                    offstage: _isEmailValid,
                    controller: _emailErrorController,
                  ),
                  CustomTextFormField(
                    borderError: _isPasswordValid,
                    controller: _passwordController,
                    hintText: "비밀번호",
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  ErrorMessageTextWidget(
                    offstage: _isPasswordValid,
                    controller: _passwordErrorController,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: TextButton(
                      onPressed: () {
                        _validateLogin(context);
                      },
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
                      SvgPicture.asset(
                        'assets/images/Group 1171277220.svg',
                        width: 40,
                      ),
                      SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/images/Group 1171277221.svg',
                        width: 40,
                      ),
                      SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/images/Group 1171277222.svg',
                        width: 40,
                      ),
                      SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/images/Group 1171277223.svg',
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _validateLogin(BuildContext context) {
    // Check credentials here (for example, hardcoded values for demo purposes)
    String username = 'test';
    String password = 'password';

    // cursor focus를 없애기 위해 사용
    FocusScope.of(context).unfocus();

    if (_emailController.text.isEmpty) {
        _isEmailValid = false;
        _emailErrorController.text = '이메일을 입력해주세요.';
    } else {
      _isEmailValid = true;
    }
    if (_passwordController.text.isEmpty) {
        _isPasswordValid = false;
        _passwordErrorController.text = '비밀번호를 입력해주세요.';
    } else {
      _isPasswordValid = true;
    }
    if (_emailController.text == username &&
        _passwordController.text == password) {
      // Valid credentials - Navigate to next screen or perform action
      print('Login successful');
    } else {
      _isPasswordValid = false;
      _passwordErrorController.text = '잘못된 이메일 혹은 비밀번호입니다. 다시 입력해주세요.';
    }
    setState(() {});
  }
}

class CustomTextFormField extends StatefulWidget {
  final bool obscureText;
  final String? hintText;
  final TextEditingController controller;
  final bool borderError;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.obscureText = false,
    required this.controller,
    required this.borderError,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: widget.borderError ? Colors.grey : Colors.red,
        width: 1,
      ),
    );
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(),
      ),
      validator: (value) {
        if (value == '123') print('123');
      },
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

class ErrorMessageTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool offstage;

  const ErrorMessageTextWidget({
    super.key,
    this.offstage = true,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: offstage,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.text,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
