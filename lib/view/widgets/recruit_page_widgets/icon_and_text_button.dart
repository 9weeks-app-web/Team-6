import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/full_sized_text_button.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/squire_icon_button.dart';

class IconAndTextButton extends StatelessWidget {
  const IconAndTextButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  final String text;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SquireIconButton(icon: icon),
        const SizedBox(width: 12),
        Expanded(
          child: FullSizedTextButton(
            onTap: onTap,
            text: text,
          ),
        ),
      ],
    );
  }
}
