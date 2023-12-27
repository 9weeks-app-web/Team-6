import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('sfacfolio'), backgroundColor: Colors.red[100]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              '마이 페이지',
              style: FontStyle.HeadLine_Bold,
            ),
          ],
        ),
      ),
    );
  }
}
