import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const AppBarWidget({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      title: Text(
        titleText,
        style: DesignTextStyle(
                style: DesignStyle.Body_SemiBold, color: DesignColor.Neutral)
            .textStyle,
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // AppBar의 높이 지정
}
