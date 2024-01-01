import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';

enum CardWidth {
  wMax,
  w210,
}

enum CardType {
  growth,
  free,
}

class CommunityCardWidget extends StatelessWidget {
  const CommunityCardWidget({
    super.key,
    required this.type,
    required this.width,
  });

  final CardType type;
  final CardWidth width;

  @override
  Widget build(BuildContext context) {
    String clubName = '블루라이트 클럽';
    String description = '블루라이트 차단 안경을 끼세요. 그리고 컴퓨터를 킵시다. 이제 작업을 시작해보아요.';
    int headcount = 500;
    int max = 1500;
    List<String> jobs = [
      '디자이너',
      '기획자',
      '개발자',
    ];
    List<String> tags = [
      '고구마',
      '꼬순내',
    ];

    return Container(
      width: width == CardWidth.wMax ? MediaQuery.of(context).size.width : 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: DesignColor.Neutral.shade20,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // img section
          Container(
            width: width == CardWidth.wMax
                ? MediaQuery.of(context).size.width
                : 210,
            height: 100,
            decoration: BoxDecoration(
              color: DesignColor.Neutral.shade20,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
          // description section
          Padding(
            padding: width == CardWidth.wMax
                ? const EdgeInsets.all(16)
                : const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  clubName,
                  style: width == CardWidth.wMax
                      ? DesignTextStyle(
                              style: DesignStyle.SubTitle_SemiBold,
                              color: DesignColor.Neutral)
                          .textStyle
                      : DesignTextStyle(
                              style: DesignStyle.Body_SemiBold,
                              color: DesignColor.Neutral)
                          .textStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: DesignTextStyle(
                          style: DesignStyle.Label_2,
                          color: DesignColor.Neutral.shade40)
                      .textStyle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                type == CardType.growth
                    ? const SizedBox(height: 8)
                    : const SizedBox(height: 12),
                Wrap(
                  spacing: 6,
                  children: type == CardType.growth
                      ? jobs
                          .map(
                            (job) => ChipWidget(
                              label: job,
                            ),
                          )
                          .toList()
                      : tags
                          .map(
                            (tag) => ChipWidget(
                              type: ChipType.tag,
                              label: tag,
                            ),
                          )
                          .toList(),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      text: '$headcount',
                      style: DesignTextStyle(
                        style: DesignStyle.Label_3_SemiBold,
                        color: DesignColor.Primary.shade80,
                      ).textStyle,
                      children: [
                        TextSpan(
                          text: '/$max명',
                          style: DesignTextStyle(
                            style: DesignStyle.Caption_1_Medium,
                            color: DesignColor.Neutral.shade60,
                          ).textStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
