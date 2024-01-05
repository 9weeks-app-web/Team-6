import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_interest_portfolio_widgets/custom_board_edit_widget.dart';
import 'package:flutter_app/viewmodel/my_page_viewmodel/my_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyInterestPortfolioDetailPage extends ConsumerWidget {
  const MyInterestPortfolioDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> menuList = ['보드 편집', '보드 삭제', '공유'];
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_outline_rounded,
              color: DesignColor.Neutral.shade40,
              size: 24,
            ),
            Text(
              'UI',
              style: DesignTextStyle(
                      style: DesignStyle.Body_Bold, color: DesignColor.Neutral)
                  .textStyle,
            ),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left_rounded),
          onPressed: () {
            ref.read(mypageProvider.notifier).overlayVisibilityChange(false);
          },
        ),
        actions: [
          CustomBoardEditWidget(
            items: menuList,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 155 / 234, //1 개의 행에 보여줄 item 개수
            mainAxisSpacing: 10, //수평 Padding
            crossAxisSpacing: 10, //수직 Padding
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.blue,
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 54,
          color: Colors.transparent, // 투명한 컨테이너
          child: ElevatedButton(
            onPressed: () {
              // 버튼이 눌렸을 때 실행할 로직
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: DesignColor.Primary, // 버튼 텍스트 색상
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0, // 그림자 제거
            ),
            child: const Text(
              '비슷한 포트폴리오 더 보러 가기',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
