import 'package:flutter/material.dart';
import 'package:flutter_app/model/menu_model.dart';
import 'package:flutter_app/view/widgets/common_widgets/custom_menu_widget.dart';

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

    return Container(
      margin: EdgeInsets.only(bottom: bottom),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: coverHeight,
            child: const Image(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
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
        ],
      ),
    );
  }
}
