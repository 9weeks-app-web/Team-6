import 'package:flutter/cupertino.dart';
import 'package:flutter_app/common.dart';

class MyProjectInfoCardWidget extends StatelessWidget {
  final int index;
  MyProjectInfoCardWidget({super.key, required this.index});
  List<Map<String, dynamic>> projectInfoList = [
    {
      'title': '완수율',
      'count': '100%',
    },
    {
      'title': '프로젝트 진행',
      'count': '3회',
    },
    {
      'title': '리더 참여',
      'count': '2회',
    },
    {
      'title': '칭찬 받은 개수',
      'count': '3개',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: DesignColor.Neutral.shade5,
          border: Border.all(color: DesignColor.Neutral.shade10),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            projectInfoList[index]['title'],
            style: DesignTextStyle(
                    color: DesignColor.Neutral.shade70,
                    style: DesignStyle.SubTitle_Bold)
                .textStyle,
          ),
          Text(
            projectInfoList[index]['count'],
            style: DesignTextStyle(
                    color: DesignColor.Neutral.shade50,
                    style: DesignStyle.Caption_1)
                .textStyle,
          ),
        ],
      ),
    );
  }
}
