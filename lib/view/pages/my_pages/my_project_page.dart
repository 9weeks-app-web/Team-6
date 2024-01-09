import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_project_widget/my_project_deadline_widget.dart';
import 'package:flutter_app/view/widgets/my_project_widget/my_project_finish_widget.dart';
import 'package:flutter_app/view/widgets/my_project_widget/my_project_hiring_widget.dart';
import 'package:flutter_app/view/widgets/my_project_widget/my_project_info_card_widget.dart';
import 'package:flutter_app/viewmodel/my_project_page_viewmodel/my_project_page_notifier.dart';
import 'package:flutter_app/viewmodel/my_project_page_viewmodel/my_project_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProjectPage extends ConsumerWidget {
  const MyProjectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myProjectpageProvider);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 155 / 64, //1 개의 행에 보여줄 item 개수
                  mainAxisSpacing: 10, //수평 Padding
                  crossAxisSpacing: 10, //수직 Padding
                ),
                itemBuilder: (BuildContext context, int index) {
                  return MyProjectInfoCardWidget(index: index);
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Divider(
                  height: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildButton('모집중', 0, state, ref),
                  _buildButton('모집마감', 1, state, ref),
                  _buildButton('프로젝트 완료', 2, state, ref),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              _buildPageBody(context, state.page),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
      String title, int index, MyProjectPageState state, WidgetRef ref) {
    bool isSelected = state.page == index ? true : false;
    return SizedBox(
      width: 99,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            elevation: 0,
            side: BorderSide(
                width: 1.0,
                color: isSelected
                    ? DesignColor.Primary.shade10
                    : DesignColor.Neutral.shade10),
            shape: DesignButtonStyle.BorderStyle04,
            backgroundColor:
                isSelected ? DesignColor.Primary.shade10 : Colors.transparent),
        onPressed: () {
          ref.read(myProjectpageProvider.notifier).pageChanged(index);
        },
        child: Text(
          title,
          style: DesignTextStyle(
                  color: isSelected
                      ? DesignColor.Primary
                      : DesignColor.Neutral.shade40,
                  style: DesignStyle.Label_2_SemiBold)
              .textStyle,
        ),
      ),
    );
  }

  Widget _buildPageBody(BuildContext context, int pageIndex) {
    switch (pageIndex) {
      case 0:
        return const MyProjectHiringWidget();
      case 1:
        return const MyProjectDeadLineWidget();
      case 2:
        return const MyProjectFinishWidget();
      default:
        return const SizedBox.shrink();
    }
  }
}
