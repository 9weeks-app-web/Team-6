import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/floating_filtering_button.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  String title = '경력 선택';
  RangeValues currentRangeValues = const RangeValues(0, 3);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SubTitleWidget(
            label: title,
            textStyle: DesignStyle.Body_Bold,
          ),
        ),
        const SizedBox(height: 40),
        Expanded(
          child: Column(
            children: [
              SliderTheme(
                data: SliderThemeData(
                  activeTickMarkColor: Colors.transparent,
                  activeTrackColor: DesignColor.Primary.shade80,
                  inactiveTrackColor: DesignColor.Neutral.shade20,
                  inactiveTickMarkColor: Colors.transparent,
                  thumbColor: Colors.white,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 12),
                ),
                child: RangeSlider(
                  values: currentRangeValues,
                  max: 20,
                  divisions: 20,
                  onChanged: (RangeValues values) {
                    setState(() {
                      currentRangeValues = values;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '${currentRangeValues.start == 0 ? "신입" : currentRangeValues.start} - ${currentRangeValues.end}년',
                  style: DesignTextStyle.Label_2_Regular,
                ),
              ),
            ],
          ),
        ),
        FloatingFilteringButton(
          selectedItems: const [],
          onTapIconBtn: () {},
          onTapTextBtn: () {},
        ),
      ],
    );
  }
}
