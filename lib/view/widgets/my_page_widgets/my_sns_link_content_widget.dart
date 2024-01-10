import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/custom_icons_icons.dart';
import 'package:flutter_app/view/widgets/common_widgets/toast_widget.dart';

const double textFieldWidth = 320;

class MySnsLinkContentWidget extends StatelessWidget {
  const MySnsLinkContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MySnsFieldWidget(
          fieldName: 'e-mail',
          fieldHintText: 'sfac123@gmail.com',
        ),
        const MySnsFieldWidget(
          fieldName: 'instagram',
          fieldHintText: '링크를 입력해주세요.',
        ),
        const MySnsFieldWidget(
          fieldName: 'facebook',
          fieldHintText: '링크를 입력해주세요.',
        ),
        const MySnsFieldWidget(
          fieldName: 'pinterest',
          fieldHintText: '링크를 입력해주세요.',
        ),
        const MySnsFieldWidget(
          fieldName: 'twitter',
          fieldHintText: '링크를 입력해주세요.',
        ),
        const MySnsFieldWidget(
          fieldName: 'youtube',
          fieldHintText: '링크를 입력해주세요.',
        ),
        const MySnsFieldWidget(
          fieldName: 'spaclog',
          fieldHintText: '링크를 입력해주세요.',
        ),
        const MySnsFieldWidget(
          fieldName: 'blog',
          fieldHintText: '링크를 입력해주세요.',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 45.0),
          child: SizedBox(
            width: textFieldWidth,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: DesignColor.Primary,
                shape: DesignButtonStyle.BorderStyle08,
              ),
              onPressed: () {
                showToast(context, '저장되었습니다!');
              },
              child: Text(
                '저장하기',
                style: DesignTextStyle(
                        color: Colors.white,
                        style: DesignStyle.Label_2_SemiBold)
                    .textStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MySnsFieldWidget extends StatelessWidget {
  final String fieldName;
  final String fieldHintText;
  const MySnsFieldWidget({
    Key? key,
    required this.fieldName,
    required this.fieldHintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: textFieldWidth,
      child: Column(
        children: [
          Row(
            children: [
              Icon(CustomIcons.icon_unlock, color: DesignColor.Neutral.shade40),
              SizedBox(
                height: 12,
                child: VerticalDivider(
                  width: 12,
                  color: DesignColor.Neutral.shade40,
                ),
              ),
              Text(
                fieldName,
                style: DesignTextStyle(
                        color: DesignColor.Neutral,
                        style: DesignStyle.Label_1_SemiBold)
                    .textStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: DesignColor.Neutral.shade10),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: DesignColor.Neutral.shade10),
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: fieldHintText,
                hintStyle: DesignTextStyle(
                        style: DesignStyle.Body,
                        color: DesignColor.Neutral.shade50)
                    .textStyle,
                contentPadding: const EdgeInsets.all(16.0)),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
