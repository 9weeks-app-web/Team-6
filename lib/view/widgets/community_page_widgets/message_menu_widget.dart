import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class MessageMenuWidget extends StatelessWidget {
  const MessageMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MenuItemWidget(
            label: '카메라',
            icon: Icons.camera_alt_outlined,
            onPressed: null,
          ),
          MenuItemWidget(
            label: '앨범',
            icon: Icons.photo_library,
            onPressed: null,
          ),
          MenuItemWidget(
            label: '파일',
            icon: Icons.upload,
            onPressed: null,
          ),
          MenuItemWidget(
            label: '투표',
            icon: Icons.how_to_vote,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    this.onPressed,
    required this.icon,
    required this.label,
  });
  final void Function()? onPressed;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Column(
          children: [
            Icon(
              icon,
              size: 24,
              color: Colors.black,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: DesignTextStyle(
                style: DesignStyle.Label_2_Regular,
                color: DesignColor.Neutral,
              ).textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
