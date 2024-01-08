import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/common_widgets/appbar_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_info_delete_account_content_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_info_delete_account_header_widget.dart';

class MyInfoDeleteAccountPage extends StatelessWidget {
  const MyInfoDeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        titleText: '회원 탈퇴',
      ),
      body: SingleChildScrollView(
          child: Center(
        child: SizedBox(
          width: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              MyInfoDeleteAccountHeaderWidget(),
              SizedBox(
                height: 26,
              ),
              MyInfoDeleteAccountContentWidget(),
            ],
          ),
        ),
      )),
    );
  }
}
