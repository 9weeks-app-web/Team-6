import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/floating_filtering_button.dart';

class BasicFilterTabbarView extends StatefulWidget {
  const BasicFilterTabbarView({
    super.key,
    required this.title,
    required this.selectedList,
    required this.filteringData,
    required this.onTapIconBtn,
    required this.onTapTextBtn,
    required this.onTapItem,
  });
  final String title;
  final List<String> selectedList;
  final List<String> filteringData;
  final void Function() onTapIconBtn;
  final void Function() onTapTextBtn;
  final void Function(String) onTapItem;

  @override
  State<BasicFilterTabbarView> createState() => _BasicFilterTabbarViewState();
}

class _BasicFilterTabbarViewState extends State<BasicFilterTabbarView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SubTitleWidget(
            label: widget.title,
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
              children: widget.filteringData
                  .map(
                    (data) => GestureDetector(
                      onTap: () => widget.onTapItem(data),
                      child: ChipWidget(
                        label: data,
                        type: ChipType.tag,
                        isSelected: widget.selectedList.contains(data),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        FloatingFilteringButton(
          selectedItems: widget.selectedList,
          onTapIconBtn: widget.onTapIconBtn,
          onTapTextBtn: widget.onTapTextBtn,
        ),
      ],
    );
  }
}
