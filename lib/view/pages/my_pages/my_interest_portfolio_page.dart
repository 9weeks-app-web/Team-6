import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/my_interest_portfolio_widgets/my_interest_portfolio_card_widget.dart';

class MyInterestPortfolioPage extends StatelessWidget {
  const MyInterestPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> interestPortfolioList = ['UX', 'UI'];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: interestPortfolioList.length,
            itemBuilder: (context, index) {
              return MyInterestPortfolioCardWidget(
                title: interestPortfolioList[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
