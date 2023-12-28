import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text('채용 공고 제목'),
                    ),
                    isActiveRecruit == false
                        ? Container()
                        : const Icon(Icons.star_border),
                  ],
                ),
                const Text('[회사이름 주식회사 코리아]'),
                Row(
                  children: [
                    const Expanded(
                      child: Text('서초구 | ~01.19(금)'),
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
                            child: const Text(
                              '바로지원',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                  ],
                ),
              ],
            ),
          ),
          // imgs - isActiveRecruit ? null : star
          // title - isActiveRecruit ? star : null
          // company name
          // location / due date - isActiveRecruit ? button : null
        ],
      ),
    );
  }
}
