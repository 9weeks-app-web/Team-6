import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/rich_text_with_divider_widget.dart';

enum CardType {
  minimum,
  maximum,
}

enum CardWidth {
  w300,
  w320,
}

class RecruitCardWidget extends StatelessWidget {
  const RecruitCardWidget({
    super.key,
    this.recruitData,
    required this.type,
    this.width,
  });
  final Map<String, dynamic>? recruitData;
  final CardType type;
  final CardWidth? width;

  @override
  Widget build(BuildContext context) {
    String recruitId = '1';
    String title = '채용 공고 제목';
    String companyName = '[회사이름 주식회사 코리아]';
    String locationGu = '서초구';
    String due = '~01.19(금)';
    String image = 'assets/images/community/recruit/recruit_01.png';

    return Container(
      width: type == CardType.maximum
          ? (width == CardWidth.w300 ? 300 : MediaQuery.of(context).size.width)
          : 155,
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
          type == CardType.maximum
              ? Container(
                  width: 300,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: DesignColor.Neutral.shade20,
                  ),
                  child: Image.asset(
                    recruitData!['image'],
                    fit: BoxFit.cover,
                  ),
                )
              : Stack(
                  children: [
                    Container(
                      width: 155,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: DesignColor.Neutral.shade20,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Image.asset(
                        recruitData!['image'],
                        fit: BoxFit.cover,
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
          // description section
          Padding(
            padding: type == CardType.maximum
                ? const EdgeInsets.all(16)
                : const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        recruitData != null ? recruitData!['title'] : title,
                        style: type == CardType.maximum
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
                    ),
                    type != CardType.maximum
                        ? Container()
                        : const Icon(
                            Icons.star_border,
                            size: 24,
                          ),
                  ],
                ),
                type == CardType.maximum
                    ? const SizedBox(height: 8)
                    : const SizedBox(height: 6),
                Text(
                  recruitData != null
                      ? recruitData!['companyName']
                      : companyName,
                  style: type == CardType.maximum
                      ? DesignTextStyle(
                              style: DesignStyle.Label_2,
                              color: DesignColor.Neutral.shade40)
                          .textStyle
                      : DesignTextStyle(
                              style: DesignStyle.Caption_1,
                              color: DesignColor.Neutral.shade40)
                          .textStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: recruitData != null
                          ? RichTextWithDividerWidget(
                              frontText: recruitData!['location_Gu'],
                              secondText: recruitData!['due'],
                            )
                          : RichTextWithDividerWidget(
                              frontText: locationGu,
                              secondText: due,
                            ),
                    ),
                    type != CardType.maximum
                        ? Container()
                        : Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 1,
                                color: DesignColor.Neutral.shade30,
                              ),
                            ),
                            child: Text(
                              '바로지원',
                              style: DesignTextStyle(
                                      style: DesignStyle.Caption_1,
                                      color: DesignColor.Neutral.shade60)
                                  .textStyle,
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
