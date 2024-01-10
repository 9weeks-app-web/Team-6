import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/dummy_data/filtering_data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/floating_filtering_button.dart';

class RegionPage extends StatefulWidget {
  const RegionPage({super.key});

  @override
  State<RegionPage> createState() => _RegionPageState();
}

class _RegionPageState extends State<RegionPage> {
  String selectedRegion = '';
  String selectedSubRegion = '';

  double listviewLength = 440;

  @override
  Widget build(BuildContext context) {
    String title = '지역선택';
    List<String> selectedItems = [
      // '서울 강남구',
      // '서울 금천구',
      // '경기 동두천시',
    ];

    void updateSelectedItems() {
      if (selectedRegion.isNotEmpty && selectedSubRegion.isNotEmpty) {
        String selectedItem = '$selectedRegion $selectedSubRegion';
        if (!selectedItems.contains(selectedItem)) {
          selectedItems.add(selectedItem);
        }
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
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
        SizedBox(
          height: selectedItems == [] ? listviewLength : 420,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: DesignColor.Neutral.shade20,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: DesignColor.Neutral.shade20,
                          ),
                        ),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: koreaRegions.keys.length,
                        itemBuilder: (context, index) {
                          var region = koreaRegions.keys.elementAt(index);
                          return RegionItem(
                            region: region,
                            subRegions: koreaRegions[region]!,
                            isSelected: region == selectedRegion,
                            onTap: () {
                              setState(() {
                                selectedRegion = region;
                                selectedSubRegion = '';
                              });
                              updateSelectedItems();
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          if (selectedRegion.isNotEmpty)
                            for (var subRegion in koreaRegions[selectedRegion]!)
                              SubRegionItem(
                                region: subRegion,
                                isSelected: subRegion == selectedSubRegion,
                                onTap: () {
                                  setState(() {
                                    selectedSubRegion = subRegion;
                                  });
                                  updateSelectedItems();
                                },
                              ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        FloatingFilteringButton(
          selectedItems: selectedItems,
          onTapIconBtn: () {},
          onTapTextBtn: () {},
        ),
      ],
    );
  }
}

class RegionItem extends StatelessWidget {
  final String region;
  final List<String> subRegions;
  final bool isSelected;
  final VoidCallback onTap;

  const RegionItem({
    super.key,
    required this.region,
    required this.subRegions,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? DesignColor.Primary.shade80 : Colors.transparent,
        ),
        child: Text(
          region,
          textAlign: TextAlign.center,
          style: DesignTextStyle(
            color: isSelected ? Colors.white : Colors.black,
            style: isSelected
                ? DesignStyle.Label_2_SemiBold
                : DesignStyle.Label_2_Regular,
          ).textStyle,
        ),
      ),
    );
  }
}

class SubRegionItem extends StatelessWidget {
  final String region;
  final bool isSelected;
  final VoidCallback onTap;

  const SubRegionItem({
    super.key,
    required this.region,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Text(
          region,
          textAlign: TextAlign.center,
          style: DesignTextStyle(
            color: isSelected ? DesignColor.Primary : Colors.black,
            style: isSelected
                ? DesignStyle.Label_2_SemiBold
                : DesignStyle.Label_2_Regular,
          ).textStyle,
        ),
      ),
    );
  }
}
