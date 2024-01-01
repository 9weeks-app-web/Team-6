import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MyInfoDeleteAccountContentWidget extends StatefulWidget {
  const MyInfoDeleteAccountContentWidget({super.key});

  @override
  State<MyInfoDeleteAccountContentWidget> createState() =>
      _MyInfoDeleteAccountContentWidgetState();
}

class _MyInfoDeleteAccountContentWidgetState
    extends State<MyInfoDeleteAccountContentWidget> {
  String? selectedDropdown;
  List<String> menuList = [
    'UX/UI가 불편해서',
    '광고가 너무 많아서',
    '잘 사용하지 않아서',
    '개인정보가 걱정되서',
    '중복 계정이 존재해서',
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '무엇이 불편하셨나요?',
          style: DesignTextStyle(
                  style: DesignStyle.SubTitle_Bold, color: DesignColor.Neutral)
              .textStyle,
        ),
        DropdownButton(
          hint: const Text('무엇이 불편하셨나요?'),
          value: selectedDropdown,
          items: menuList.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (dynamic value) {
            setState(() {
              selectedDropdown = value ?? '';
            });
          },
        )
      ],
    );
  }
}
