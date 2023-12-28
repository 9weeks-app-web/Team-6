import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class RecruitCardWidget extends StatelessWidget {
  const RecruitCardWidget({
    super.key,
    this.recruitData,
    required this.isActiveRecruit,
  });
  final dynamic recruitData;
  final bool isActiveRecruit;

  @override
  Widget build(BuildContext context) {
    String title = '채용 공고 제목';
    String companyName = '[회사이름 주식회사 코리아]';
    String locationGu = '서초구';
    String due = '~01.19(금)';

    return Container(
      width: isActiveRecruit ? MediaQuery.of(context).size.width : 155,
      decoration: BoxDecoration(
        border: Border.all(
          color: isActiveRecruit ? Colors.black : Colors.transparent,
        ),
      ),
      child: Column(
        children: [
          isActiveRecruit == true
              ? Container(
                  height: 155,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                )
              : Stack(
                  children: [
                    Container(
                      width: 155,
                      height: 155,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.star_border),
                      ),
                    ),
                  ],
                ),
          Padding(
            padding: isActiveRecruit
                ? const EdgeInsets.all(12)
                : const EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: FontStyle.Label_3_Bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    isActiveRecruit == false
                        ? Container()
                        : const Icon(Icons.star_border),
                  ],
                ),
                Text(
                  companyName,
                  style: FontStyle.Caption_1_Medium,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '$locationGu | $due',
                        style: FontStyle.Caption_1_Medium,
                      ),
                    ),
                    isActiveRecruit == false
                        ? Container()
                        : Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2.5,
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              ),
                            ),
                            child: Text(
                              '바로지원',
                              style: FontStyle.Caption_1_Medium,
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
