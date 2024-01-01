import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/common_widgets/appbar_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_sns_link_content_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_sns_link_header_widget.dart';

class MyInfoSnsLinkPage extends StatelessWidget {
  const MyInfoSnsLinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        titleText: 'SNS 연동 링크 편집',
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MySnsLinkHeaderWidget(),
          SizedBox(
            height: 18,
          ),
          MySnsLinkContentWidget(),
        ],
      )),
    );
  }
}
