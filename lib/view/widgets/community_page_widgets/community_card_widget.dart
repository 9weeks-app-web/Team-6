import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:go_router/go_router.dart';

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
    this.cardData,
  });

  final CardType type;
  final CardWidth width;
  final Map<String, dynamic>? cardData;

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

    return GestureDetector(
      onTap: () {
        if (cardData != null) {
          Future.delayed(const Duration(milliseconds: 300), () {
            context.push(
              '/community/club/${type.name}/${cardData!['id']}',
            );
          });
        }
      },
      child: Container(
        width:
            width == CardWidth.wMax ? MediaQuery.of(context).size.width : 210,
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
              clipBehavior: Clip.antiAlias,
              child: cardData != null
                  ? Image.asset(
                      cardData!['image'],
                      fit: BoxFit.cover,
                    )
                  : null,
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
                    cardData != null ? cardData!['clubName'] : clubName,
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
                    cardData != null ? cardData!['description'] : description,
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
                  TagWrapperWidget(
                    type: type,
                    tags: cardData != null ? cardData!['tag'] : tags,
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        text: '$headcount명',
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
      ),
    );
  }
}

class TagWrapperWidget extends StatelessWidget {
  const TagWrapperWidget({
    super.key,
    required this.type,
    required this.tags,
  });

  final CardType type;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      children: tags
          .map(
            (job) => ChipWidget(
              label: job,
              type: type == CardType.growth ? ChipType.job : ChipType.tag,
              padding: type == CardType.free
                  ? const EdgeInsets.symmetric(horizontal: 6, vertical: 2)
                  : null,
            ),
          )
          .toList(),
    );
  }
}
