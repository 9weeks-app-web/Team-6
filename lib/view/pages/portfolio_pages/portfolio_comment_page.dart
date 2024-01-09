import 'package:flutter/material.dart';

String comment = '';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 39,
                    height: 19,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '댓글',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0.11,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '4',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0.11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 328,
              height: 32,
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('댓글을 입력하세요'),
                        content: TextFormField(
                          decoration: const InputDecoration(
                            hintText: '댓글을 입력해주세요',
                          ),
                          onChanged: (value) {
                            setState(() {
                              comment = value;
                            });
                          },
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              // 여기서 comment 변수를 사용하여 원하는 작업을 수행할 수 있습니다.
                            },
                            child: const Text('확인'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: TextButton.styleFrom(
                  //primary: Color(0xFF8F8F9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text(
                  '댓글을  입력하세요',
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // 컨테이너를 원 형태로 설정
                          color: Colors.grey[300], // 컨테이너 배경색
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/Profile_Small (1).png', // 이미지 주소
                            fit: BoxFit.cover, // 이미지가 컨테이너에 맞게 보이도록 설정
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '권버들',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '개발진행정도를 상세하게 공유받을수 있을까요?',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.more_vert,
                        size: 13,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        child: Icon(Icons.arrow_forward),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // 컨테이너를 원 형태로 설정
                          color: Colors.grey[300], // 컨테이너 배경색
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/Profile_Small (2).png', // 이미지 주소
                            fit: BoxFit.cover, // 이미지가 컨테이너에 맞게 보이도록 설정
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '오햐얀',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '작성자',
                        style: TextStyle(
                            color: Color(0xFF0059FF),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            height: 0.15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '물론입니다!연락처 남겨주시겠어요?',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 23,
                      ),
                      const Icon(
                        Icons.more_vert,
                        size: 13,
                      )
                    ],
                  ),
                  const Row(),
                  const Row(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // 컨테이너를 원 형태로 설정
                          color: Colors.grey[300], // 컨테이너 배경색
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/Profile_Small (1).png', // 이미지 주소
                            fit: BoxFit.cover, // 이미지가 컨테이너에 맞게 보이도록 설정
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '권버들',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '개발진행정도를 상세하게 공유받을수 있을까요?',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.more_vert,
                        size: 13,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        child: Icon(Icons.arrow_forward),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // 컨테이너를 원 형태로 설정
                          color: Colors.grey[300], // 컨테이너 배경색
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/Profile_Small (2).png', // 이미지 주소
                            fit: BoxFit.cover, // 이미지가 컨테이너에 맞게 보이도록 설정
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '오햐얀',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '작성자',
                        style: TextStyle(
                            color: Color(0xFF0059FF),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            height: 0.15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '물론입니다!연락처 남겨주시겠어요?',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 23,
                      ),
                      const Icon(
                        Icons.more_vert,
                        size: 13,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
