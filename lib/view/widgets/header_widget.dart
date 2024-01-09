import 'package:flutter/material.dart';
import 'package:flutter_app/view/widgets/toggle_widget.dart';
import 'package:flutter_svg/svg.dart';

enum DomainType {
  folio,
  log,
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    this.type = DomainType.folio,
  });
  final DomainType? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  SvgPicture.asset('assets/logo/sfac_logo.svg'),
                  const SizedBox(width: 8),
                  ToggleWidget(type: type),
                ],
              ),
            ),
            const Icon(
              Icons.notifications_none_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
