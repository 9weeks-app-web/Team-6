import 'package:flutter/material.dart';

class InfoProject extends StatelessWidget {
  const InfoProject({
    super.key,
    required this.viewCount,
    required this.likeCount,
    required this.commentCount,
  });

  final int viewCount;
  final int likeCount;
  final int commentCount;

  @override
  Widget build(BuildContext context) {
    Color color = Colors.grey;

    return Container(
      child: Row(
        children: [
          Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: color,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    viewCount.toString(),
                    style: TextStyle(
                      color: color,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: color,
                  ),
                  SizedBox(width: 5),
                  Text(
                    likeCount.toString(),
                    style: TextStyle(
                      color: color,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: color,
                  ),
                  SizedBox(width: 5),
                  Text(
                    commentCount.toString(),
                    style: TextStyle(color: color),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Text('2023.12.01', style: TextStyle(color: color),),
          SizedBox(width: 3),
        ],
      ),
    );
  }
}
