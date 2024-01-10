import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:go_router/go_router.dart';

enum TabType {
  normal,
  recruit,
}

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
    this.hintText,
    this.tabType = TabType.normal,
  });
  final String? hintText;
  final TabType? tabType;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (value) {},
      decoration: InputDecoration(
        hintText: widget.hintText ?? '원하는 키워드를 입력해주세요.',
        hintStyle: DesignTextStyle(
          style: DesignStyle.Caption_1,
          color: DesignColor.Neutral.shade30,
        ).textStyle,
        suffixIcon: widget.tabType == TabType.normal
            ? const Icon(
                Icons.search,
                color: DesignColor.Neutral,
              )
            : GestureDetector(
                onTap: () {
                  context.push('/community/recruit/filter');
                },
                child: const Icon(
                  Icons.tune_rounded,
                  color: DesignColor.Neutral,
                ),
              ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(
            color: DesignColor.Neutral.shade20,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(
            color: DesignColor.Primary.shade50,
            width: 1.0,
          ),
        ),
        contentPadding: const EdgeInsets.only(
          left: 12,
          top: 10,
          bottom: 10,
        ),
      ),
    );
  }
}
