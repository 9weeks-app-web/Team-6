import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/community_page_widgets/community_card_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/advertise_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/more_button_widget.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    double listTileTopPadding = 17.5;
    double designedTitlePadding = 11;
    double tabbarContentGap = 24;
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height:
              tabbarContentGap - (listTileTopPadding - designedTitlePadding),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 0,
                  right: 4,
                ),
                title: Text(
                  '성장클럽',
                  style: DesignTextStyle.SubTitle_Bold,
                ),
                trailing: MoreButtonWidget(
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 256,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: CommunityCardWidget(
                        width: CardWidth.w210,
                        type: CardType.growth,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 28),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0, right: 4),
                title: Text(
                  '자유클럽',
                  style: DesignTextStyle.SubTitle_Bold,
                ),
                trailing: MoreButtonWidget(
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 266,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: CommunityCardWidget(
                        width: CardWidth.w210,
                        type: CardType.free,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 28),
        Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 20, right: 4),
              title: Text(
                '채용',
                style: DesignTextStyle.SubTitle_Bold,
              ),
              trailing: MoreButtonWidget(
                onPressed: () {},
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AdvertiseWidget(),
            ),
          ],
        ),
        const SizedBox(height: 28),
      ],
    );
  }
}
