import 'package:flutter/material.dart';

class ProjectFilter extends StatelessWidget {
  const ProjectFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '인기순',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Icon(
                      Icons.splitscreen_outlined,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Icon(
                      Icons.segment_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(
                    '모집중',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
