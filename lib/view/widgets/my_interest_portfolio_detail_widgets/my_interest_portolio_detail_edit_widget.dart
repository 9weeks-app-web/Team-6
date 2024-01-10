import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyInterestPortfolioDetailEditWidget extends StatefulWidget {
  const MyInterestPortfolioDetailEditWidget({Key? key}) : super(key: key);

  @override
  _MyInterestPortfolioDetailEditWidgetState createState() =>
      _MyInterestPortfolioDetailEditWidgetState();
}

class _MyInterestPortfolioDetailEditWidgetState
    extends State<MyInterestPortfolioDetailEditWidget> {
  bool isCheckedLock = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          color: Colors.white),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 17),
            child: Container(
              height: 4,
              width: 42,
              decoration: BoxDecoration(
                  color: DesignColor.Neutral.shade10,
                  borderRadius: const BorderRadius.all(Radius.circular(2))),
            ),
          ),
          const Divider(
            height: 1,
          ),
          Text(
            '보드 편집',
            style: DesignTextStyle(
                    style: DesignStyle.SubTitle_Bold,
                    color: DesignColor.Neutral)
                .textStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  child: SizedBox(
                      height: 60,
                      width: 80,
                      child: Image.asset(
                        'assets/images/boardimg01.png',
                        fit: BoxFit.fill,
                      )),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Material(
                    color: Colors.white,
                    // Material 위젯 추가
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '보드 제목을 입력해주세요.',
                        hintStyle: DesignTextStyle(
                                style: DesignStyle.Body,
                                color: DesignColor.Neutral.shade50)
                            .textStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      '이 보드를 비공개로 설정',
                      style: DesignTextStyle(
                              color: DesignColor.Neutral,
                              style: DesignStyle.Label_2_SemiBold)
                          .textStyle,
                    ),
                    Checkbox(
                      value: isCheckedLock,
                      onChanged: (value) {
                        setState(() {
                          isCheckedLock = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 100,
                      height: 32,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: DesignColor.Primary,
                          shape: DesignButtonStyle.BorderStyle04,
                        ),
                        onPressed: () {},
                        child: Text(
                          '저장',
                          style: DesignTextStyle(
                                  color: Colors.white,
                                  style: DesignStyle.Label_2_SemiBold)
                              .textStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
