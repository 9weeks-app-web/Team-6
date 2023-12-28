import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '내 프로필',
          style: FontStyle.Label_2_SemiBold,
        ),
        ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(color: Colors.black),
              child:
                  Image.asset('assets/images/profile.png', fit: BoxFit.cover),
            )),
        const Text('망곰'),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
              onPressed: () => {},
              child: const Row(
                children: [Icon(Icons.abc), Text('내 프로필 편집')],
              )),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text('팔로우'),
                Text('12'),
              ],
            ),
            Column(
              children: [
                Text('팔로워'),
                Text('102'),
              ],
            ),
            Column(
              children: [
                Text('좋아요'),
                Text('99'),
              ],
            ),
            Column(
              children: [
                Text('프로젝트 참여'),
                Text('7'),
              ],
            )
          ],
        ),
        Text(
          '소개',
          style: FontStyle.Label_2_SemiBold,
          selectionColor: (DesignColor.Neutral.shade70),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(
            '안녕하세요.',
            style: FontStyle.Body,
            textAlign: TextAlign.center,
            selectionColor: DesignColor.Neutral.shade70,
          ),
        ),
        Row(
          children: [
            Text(
              '배지',
              style: FontStyle.Label_2_SemiBold,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: DesignColor.System.warning),
                    width: 80,
                    height: 26,
                    child: const Text('5회 완수자', textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black12),
                    width: 80,
                    height: 26,
                    child: const Text('5회 완수자', textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
