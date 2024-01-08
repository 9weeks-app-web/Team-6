import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/shadows.dart';

class ApplyFloatingButton extends StatelessWidget {
  const ApplyFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            Text(
              '스팩 포트폴리오로 빠른 지원, 높은 합격률!',
              style: DesignTextStyle.Caption_1,
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 132),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: DesignColor.Primary,
                ),
                child: Text(
                  '입사지원',
                  style: DesignTextStyle(
                    style: DesignStyle.Label_1_SemiBold,
                    color: Colors.white,
                  ).textStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
