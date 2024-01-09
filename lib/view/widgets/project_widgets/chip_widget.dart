import 'package:flutter/material.dart';

class RecruitingChip extends StatelessWidget {
  const RecruitingChip({
    super.key,
    required this.isRecruiting,
  });

  final bool isRecruiting;

  @override
  Widget build(BuildContext context) {
    String text = isRecruiting ? '모집중' : '모집완료';
    return Container(
      width: 48,
      height: 26,
      // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: isRecruiting ? Color(0xFF337AFF) : Color(0xFF404040),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Center(
        child: Text(text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}

class RoleChip extends StatelessWidget {
  const RoleChip({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,),
        ),
      ),
    );
  }
}
