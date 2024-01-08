import 'package:flutter/material.dart';

class CorrectionMessageTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool offstage;
  final String text;

  const CorrectionMessageTextWidget({
    super.key,
    this.offstage = true,
    required this.controller,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: offstage,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 16,
                ),
                SizedBox(width: 3),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
