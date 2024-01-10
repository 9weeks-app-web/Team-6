import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/full_sized_text_button.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/squire_icon_button.dart';

class IconAndTextButton extends StatelessWidget {
  const IconAndTextButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTapTextBtn,
    required this.onTapIconBtn,
  });

  final String text;
  final IconData icon;
  final void Function() onTapTextBtn;
  final void Function() onTapIconBtn;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SquireIconButton(
          icon: icon,
          onTap: onTapIconBtn,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: FullSizedTextButton(
            onTap: onTapTextBtn,
            text: text,
          ),
        ),
      ],
    );
  }
}
