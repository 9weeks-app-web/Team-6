import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class MyProfileWidget extends StatelessWidget {
  const MyProfileWidget({super.key});
  final double coverHeight = 180;
  final double profileHeight = 90;

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
            top: 20,
            left: MediaQuery.of(context).size.width - 45,
            child: IconButton(
                onPressed: () {
                  context.push('/mypage/deleteaccount');
                },
                icon: const Icon(Icons.more_horiz_outlined)),
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
