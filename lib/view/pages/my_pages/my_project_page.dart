import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/my_project_widget/my_project_info_card_widget.dart';

class MyProjectPage extends StatelessWidget {
  const MyProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(
                    width: 99,
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: DesignColor.Primary.shade10,
                        shape: DesignButtonStyle.BorderStyle04,
                      ),
                      onPressed: () {},
                      child: Text(
                        '모집중',
                        style: DesignTextStyle(
                                color: DesignColor.Primary,
                                style: DesignStyle.Caption_1_Medium)
                            .textStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 99,
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        side: BorderSide(
                          width: 1.0,
                          color: DesignColor.Neutral.shade10,
                        ),
                        shape: DesignButtonStyle.BorderStyle04,
                      ),
                      onPressed: () {},
                      child: Text(
                        '모집마감',
                        style: DesignTextStyle(
                                color: DesignColor.Neutral.shade40,
                                style: DesignStyle.Caption_1_Medium)
                            .textStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 99,
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        elevation: 0,
                        side: BorderSide(
                          width: 1.0,
                          color: DesignColor.Neutral.shade10,
                        ),
                        shape: DesignButtonStyle.BorderStyle04,
                      ),
                      onPressed: () {},
                      child: Text(
                        '프로젝트 완료',
                        style: DesignTextStyle(
                                color: DesignColor.Neutral.shade40,
                                style: DesignStyle.Caption_1_Medium)
                            .textStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
