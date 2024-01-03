import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/common_widgets/appbar_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_info_edit_content_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_info_edit_profile_widget.dart';

class MyInfoEditPage extends StatelessWidget {
  const MyInfoEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        titleText: '프로필 편집',
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          MyInfoEditProfileWidget(),
          MyInfoEditContentWidget(),
        ],
      )),
    );
  }
}
