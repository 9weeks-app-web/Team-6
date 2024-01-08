import 'package:flutter/material.dart';

class ErrorMessageTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool offstage;

  const ErrorMessageTextWidget({
    super.key,
    this.offstage = true,
    required this.controller,
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
            Text(
              controller.text,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
