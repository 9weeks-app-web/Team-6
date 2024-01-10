import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/floating_filtering_button.dart';

class BasicFilterTabbarView extends StatelessWidget {
  const BasicFilterTabbarView({
    super.key,
    required this.title,
    required this.selectedList,
    required this.filteringData,
  });
  final String title;
  final List<String> selectedList;
  final List<String> filteringData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SubTitleWidget(
            label: title,
            textStyle: DesignStyle.Body_Bold,
          ),
        ),
        const SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '최대 5개 선택 가능',
            style: DesignTextStyle.Caption_1,
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: filteringData
                  .map(
                    (data) => ChipWidget(
                      label: data,
                      type: ChipType.tag,
                      isSelected: selectedList.contains(data),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        FloatingFilteringButton(
          selectedItems: selectedList,
          onTapIconBtn: () {},
          onTapTextBtn: () {},
        ),
      ],
    );
  }
}
