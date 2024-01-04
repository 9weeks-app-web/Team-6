import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({
    super.key,
    required this.type,
  });

  final DomainType? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DesignColor.Primary.shade10,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: type == DomainType.folio
                  ? DesignColor.Primary.shade80
                  : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              child: Text(
                '폴리오',
                style: TextStyle(
                  color: type == DomainType.folio
                      ? Colors.white
                      : DesignColor.Neutral.shade30,
                  fontSize: 14,
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: type != DomainType.folio
                  ? DesignColor.Primary.shade80
                  : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              child: Text(
                '로그',
                style: TextStyle(
                  color: type != DomainType.folio
                      ? Colors.white
                      : DesignColor.Neutral.shade30,
                  fontSize: 14,
                  fontFamily: 'Pretendard Variable',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
