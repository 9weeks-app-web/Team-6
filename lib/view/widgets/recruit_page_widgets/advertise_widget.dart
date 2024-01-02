import 'package:flutter/material.dart';

class AdvertiseWidget extends StatelessWidget {
  const AdvertiseWidget({
    super.key,
    this.image,
  });
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      height: 100,
      child: image != null
          ? Image.asset(image!)
          : Container(
              color: Colors.grey,
            ),
    );
  }
}
