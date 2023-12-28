import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/pages/my_pages/my_info_page.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_profile_widget.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('sfacfolio'), backgroundColor: Colors.red[100]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '마이 페이지',
                style: FontStyle.HeadLine_SemiBold,
              ),
              const ProfileWidget(),
              const Divider(thickness: 1, height: 1, color: Colors.black12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('정보'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('내 포트폴리오'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('관심 포트폴리오'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('관심 포트폴리오'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('관심 포트폴리오'),
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 1, height: 1, color: Colors.black12),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  children: const [MyInfoPage()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
