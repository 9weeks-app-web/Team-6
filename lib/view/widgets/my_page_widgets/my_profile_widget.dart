import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/model/menu_model.dart';
import 'package:flutter_app/view/widgets/common_widgets/custom_menu_widget.dart';
import 'package:flutter_app/view/widgets/my_page_widgets/my_profile_badge_widget.dart';

class MyProfileWidget extends StatelessWidget {
  MyProfileWidget({super.key});
  final double coverHeight = 180;
  final double profileHeight = 100;
  List<MenuModel> menuList = [
    MenuModel(iconImg: Icons.edit, title: '프로필 편집'),
    MenuModel(iconImg: Icons.image, title: '배너 이미지 교체'),
    MenuModel(iconImg: Icons.delete, title: '배너 이미지 삭제'),
    MenuModel(iconImg: Icons.share, title: '공유'),
  ];
  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return SizedBox(
      height: coverHeight + bottom,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: const Image(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: CustomMenuWidget(
              items: menuList,
            ),
          ),
          Positioned(
            top: top,
            child: ClipOval(
              child: Container(
                height: profileHeight,
                width: profileHeight,
                decoration: const BoxDecoration(color: Colors.black),
                child:
                    Image.asset('assets/images/profile.png', fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: coverHeight,
            right: 20,
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) =>
                      const MyProfileBadgeWidget(),
                );
              },
              child: Container(
                height: 70,
                width: 54,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/badge.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 6),
                      const Icon(Icons.star_border_outlined,
                          color: Colors.white, size: 24),
                      Text(
                        '4',
                        style: DesignTextStyle(
                                color: Colors.white,
                                style: DesignStyle.SubTitle_Bold)
                            .textStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
