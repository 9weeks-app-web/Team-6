import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/common.dart'; // 필요한 스타일 및 색상 정의

void showToast(BuildContext context, String text) {
  final fToast = FToast();
  fToast.init(context);

  Widget toast = Container(
    width: 320,
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      color: DesignColor.Primary.shade10,
    ),
    child: Text(
      text,
      style: DesignTextStyle(color: DesignColor.Neutral.shade50).textStyle,
      textAlign: TextAlign.center,
    ),
  );

  fToast.showToast(
    child: toast,
    toastDuration: const Duration(seconds: 2),
    positionedToastBuilder: (context, child) {
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 35,
            child: child,
          ),
        ],
      );
    },
  );
}
