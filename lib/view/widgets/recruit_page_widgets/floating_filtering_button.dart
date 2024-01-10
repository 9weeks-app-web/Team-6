import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/shadows.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/icon_and_text_button.dart';

class FloatingFilteringButton extends StatelessWidget {
  const FloatingFilteringButton({
    super.key,
    required this.selectedItems,
  });
  final List<String> selectedItems;

  @override
  Widget build(BuildContext context) {
    String buttonText = '이 조건으로 검색';
    onTap() {}

    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: shadows,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: selectedItems
                  .map(
                    (e) => ChipWidget(
                      label: e,
                      type: ChipType.filtering,
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 12),
            IconAndTextButton(
              text: buttonText,
              icon: Icons.refresh,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
