import 'package:flutter/material.dart';

class PortfolioProjectPage extends StatefulWidget {
  const PortfolioProjectPage({super.key});

  @override
  State<PortfolioProjectPage> createState() => _PortfolioProjectPageState();
}

class _PortfolioProjectPageState extends State<PortfolioProjectPage> {
  Color containerColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // IconButton(
        //         icon: Icon(Icons.close),
        //         onPressed: () {
        //           // X 버튼 클릭 시 화면 닫기 동작 추가
        //         },
        //       ),
        body: Container(
          width: 360,
          height: 740,
          decoration: const BoxDecoration(color: Color(0xFF333333)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '프로젝트 이름',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                '사람 이름',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildColoredContainer(),
                  buildColoredContainer(),
                  buildColoredContainer(),
                  buildColoredContainer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildColoredContainer() {
    return GestureDetector(
      onTap: () {
        setState(() {
          // 컨테이너를 눌렀을 때 색깔 변경
          containerColor = Colors.blue; // 또는 다른 원하는 색상
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: containerColor,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8),
      ),
    );
  }
}
