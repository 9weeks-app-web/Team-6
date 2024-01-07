import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/my_info_widgets/my_info_sns_link_widget.dart';
import 'package:flutter_app/view/widgets/my_info_widgets/my_info_content_widget.dart';
import 'package:flutter_app/viewmodel/my_info_page_viewmodel/my_info_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyInfoPage extends ConsumerWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myInfopageProvider);
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            _buildPageBody(context, state.page),
          ],
        ),
      ),
    );
  }

  Widget _buildPageBody(BuildContext context, int pageIndex) {
    switch (pageIndex) {
      case 0:
        return const MyInfoContentWidget();
      case 1:
        return const MyInfoSNSLinkWidget();
      default:
        return const SizedBox.shrink();
    }
  }
}
