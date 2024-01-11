import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';


class FindIdDonePage extends StatefulWidget {
  const FindIdDonePage({super.key});

  @override
  State<FindIdDonePage> createState() => _FindIdPageState();
}

class _FindIdPageState extends State<FindIdDonePage> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text(
                    '정보와 일치하는 아이디입니다.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFE6E6E6),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 56,
                      child: Center(
                        child: Text(
                          'abcdefg123@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),Spacer(),
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
