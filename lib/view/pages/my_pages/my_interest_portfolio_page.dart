import 'package:flutter/material.dart';
import 'package:flutter_app/view/pages/my_pages/my_interest_portfolio_detail_page.dart';
import 'package:flutter_app/view/widgets/my_interest_portfolio_widgets/my_interest_portfolio_card_widget.dart';
import 'package:flutter_app/viewmodel/my_page_viewmodel/my_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyInterestPortfolioPage extends ConsumerWidget {
  const MyInterestPortfolioPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> interestPortfolioList = ['UX', 'UI'];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: interestPortfolioList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  ref
                      .read(mypageProvider.notifier)
                      .overlayVisibilityChange(true); // 여기에 새로운 페이지 위젯을 넣습니다.
                },
                child: MyInterestPortfolioCardWidget(
                  title: interestPortfolioList[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
