import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_sns_link_content_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_sns_link_header_widget.dart';
import 'package:flutter_app/viewmodel/my_info_page_viewmodel/my_info_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyInfoSNSLinkWidget extends ConsumerWidget {
  const MyInfoSNSLinkWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    iconSize: 24,
                    onPressed: () {
                      ref.read(myInfopageProvider.notifier).pageChanged(0);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  'SNS 연동 링크 편집',
                  style: DesignTextStyle(
                          style: DesignStyle.Body_SemiBold,
                          color: DesignColor.Neutral)
                      .textStyle,
                ),
              ],
            ),
          ),
        ),
        const SingleChildScrollView(
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
      ],
    );
  }
}
