import 'package:flutter/material.dart';

class AdvertiseWidget extends StatelessWidget {
  const AdvertiseWidget({
    super.key,
    this.image,
  });
  final String? image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 99,
      child: image != null
          ? Image.asset(image!)
          : Container(
              color: Colors.grey,
            ),
    );
  }
}
