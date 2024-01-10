import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';

class SignUpDonePage extends StatelessWidget {
  const SignUpDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Image.asset('assets/images/signupdone.png'),
              SizedBox(height: 48),
              Text(
                '회원가입이 완료되었습니다!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '지금 바로 다양한 작업을 감상해보세요!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              // SizedBox(height: 86),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: TextButton(
                  onPressed: () {
                    router.go('/login');
                  },
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF0059FF),
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
    );
  }
}
