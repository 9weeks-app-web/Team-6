import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyCommunityRecruitResumeWidget extends StatefulWidget {
  const MyCommunityRecruitResumeWidget({super.key});

  @override
  State<MyCommunityRecruitResumeWidget> createState() =>
      _MyCommunityRecruitResumeWidgetState();
}

class _MyCommunityRecruitResumeWidgetState
    extends State<MyCommunityRecruitResumeWidget> {
  String? fileName; // 파일 이름을 저장할 변수

  Future<void> pickSingleFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      // 파일이 선택된 경우
      setState(() {
        fileName = result.files.single.name; // 파일 이름 업데이트
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return fileName == null
        ? Padding(
            padding: const EdgeInsets.only(bottom: 63),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(8),
              dashPattern: const [8, 4],
              child: Container(
                color: DesignColor.Neutral.shade5,
                height: 150,
                width: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '내 이력서 업로드',
                      style: DesignTextStyle(
                              style: DesignStyle.Label_2_SemiBold,
                              color: DesignColor.Neutral)
                          .textStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '나의 이력서를 업로드하고\n채용 공고에 지원해보세요!',
                      style: DesignTextStyle(
                              style: DesignStyle.Caption_1,
                              color: DesignColor.Neutral.shade40)
                          .textStyle,
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      iconSize: 44,
                      onPressed: () {
                        pickSingleFile();
                      },
                      icon: const Icon(
                        Icons.add_circle_outlined,
                        color: DesignColor.Primary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: DesignColor.Neutral.shade20),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                height: 80,
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            fileName!,
                            style: DesignTextStyle(
                                    style: DesignStyle.Label_2_SemiBold,
                                    color: DesignColor.Neutral)
                                .textStyle,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            '2023.12.25 ㅣ 16:35',
                            style: DesignTextStyle(
                                    style: DesignStyle.Caption_1,
                                    color: DesignColor.Neutral.shade40)
                                .textStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: VerticalDivider(
                              width: 1,
                            ),
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(0),
                            icon: const Icon(Icons.more_vert_rounded),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9.0),
                child: SizedBox(
                  width: 320,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: DesignColor.Primary,
                      shape: DesignButtonStyle.BorderStyle08,
                    ),
                    onPressed: () {},
                    child: Text(
                      '이력서 업로드',
                      style: DesignTextStyle(
                              color: Colors.white,
                              style: DesignStyle.Label_2_SemiBold)
                          .textStyle,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
