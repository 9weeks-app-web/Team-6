import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common.dart';

class MySnsLinkHeaderWidget extends StatelessWidget {
  const MySnsLinkHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SizedBox(
          width: 320,
          child: Text(
            textAlign: TextAlign.start,
            '활동하는 웹사이트의 링크를 입력해주세요.',
            style: DesignTextStyle(
                    color: DesignColor.Neutral,
                    style: DesignStyle.Label_1_SemiBold)
                .textStyle,
          ),
        ),
      ),
    );
  }
}
