import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/pages/community_pages/detail_pages/data.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/description_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/subtitle_widget.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/user_profile_tile.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/advertise_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/full_sized_text_button.dart';

class RoungeTab extends StatelessWidget {
  const RoungeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String buttonText = '입장하기';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 224,
                color: Colors.grey,
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '${club['headCount']}명',
                        style: DesignTextStyle(
                          style: DesignStyle.Label_3_SemiBold,
                          color: DesignColor.Primary.shade80,
                        ).textStyle,
                        children: [
                          TextSpan(
                            text: '/',
                            style: DesignTextStyle(
                              style: DesignStyle.Label_2_Regular,
                              color: DesignColor.Neutral.shade20,
                            ).textStyle,
                          ),
                          TextSpan(
                            text: '${club['max']}명',
                            style: DesignTextStyle(
                              style: DesignStyle.Label_2_Regular,
                              color: DesignColor.Neutral.shade60,
                            ).textStyle,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      club['description'],
                      style: DesignTextStyle(
                        style: DesignStyle.Label_2_Regular,
                        color: DesignColor.Neutral,
                      ).textStyle,
                    ),
                    const SizedBox(height: 27),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubTitleWidget(
                          label: '클럽장',
                        ),
                        UserProfileTile(
                          type: ProfileType.max,
                          nickname: clubHead['nickname'],
                          job: clubHead['job'],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          clubHead['description'],
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubTitleWidget(
                          label: '클럽규칙',
                        ),
                        DescriptionWidget(
                          child: Text(
                            club['rule'],
                            style: DesignTextStyle.Label_2_Regular,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubTitleWidget(
                          label: '클럽 통계',
                        ),
                        DescriptionWidget(
                          child: Column(
                            children: club['statistics'].entries.map<Widget>(
                              (entry) {
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      entry.key,
                                      style: DesignTextStyle.Label_2_Regular,
                                    ),
                                    Text(
                                      entry.value.toString(),
                                      style: DesignTextStyle.Label_2_Regular,
                                    ),
                                  ],
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubTitleWidget(
                          label: '이 클럽의 키워드',
                        ),
                        Wrap(
                          children: club['keyword']
                              .map<Widget>(
                                (keyword) => Padding(
                                  padding: const EdgeInsets.only(right: 6),
                                  child: ChipWidget(
                                    label: keyword,
                                    type: ChipType.tag,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubTitleWidget(
                          label: '최근활동',
                        ),
                        DescriptionWidget(
                          child: Column(
                            children: [
                              IconListTile(
                                title: club['curActivity'][0]['description'],
                                icon: Icons.login_rounded,
                              ),
                              IconListTile(
                                title: club['curActivity'][1]['description'],
                                icon: Icons.post_add,
                              ),
                              IconListTile(
                                title: club['curActivity'][2]['description'],
                                icon: Icons.how_to_vote_outlined,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const AdvertiseWidget(
                      image: 'assets/images/project/banner.png',
                    ),
                    const SizedBox(height: 35),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubTitleWidget(
                          label: '투표',
                        ),
                        DescriptionWidget(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: club['vote']
                                .map<Widget>(
                                  (vote) => IconListTile(
                                    title: vote['title'],
                                    icon: Icons.how_to_vote_outlined,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: FullSizedTextButton(
            onTap: () {},
            text: buttonText,
          ),
        ),
      ],
    );
  }
}

class IconListTile extends StatelessWidget {
  const IconListTile({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(
        horizontal: 0,
        vertical: -4,
      ),
      title: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: DesignTextStyle.Label_2_Regular,
          ),
        ],
      ),
    );
  }
}
