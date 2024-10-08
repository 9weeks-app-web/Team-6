import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset('logo/sfac_logo.svg'),
              //toggle folio-log
            ],
          ),
        ),
        const Icon(Icons.notifications_none_outlined),
      ],
    );
  }
}
