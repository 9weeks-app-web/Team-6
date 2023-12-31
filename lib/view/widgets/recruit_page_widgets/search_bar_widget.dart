import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

//@TabType을 받아서 타입에 따라 suffixIcon을 다르게 줄 것

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
    this.hintText,
  });
  final String? hintText;

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
        hintStyle: FontStyle.Caption_1,
        suffixIcon: widget.hintText == null
            ? const Icon(
                Icons.search,
                color: DesignColor.Neutral,
              )
            : null,
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
