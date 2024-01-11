import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScrollAwareFab extends StatefulWidget {
  final ScrollController scrollController;

  ScrollAwareFab({required this.scrollController});

  @override
  _ScrollAwareFabState createState() => _ScrollAwareFabState();
}

class _ScrollAwareFabState extends State<ScrollAwareFab> {
  late ScrollController _scrollController;
  bool _isFabExtended1 = true;
  bool _isFabExtended2 = true;
  bool _isFabExtended3 = true;
  bool _isFabExtended4 = true;
  bool _isFabExtended5 = true;
  List<bool> _isVisibleList = [
    true,
  ]; // 각 버튼의 가시성을 나타내는 리스트
  double _fabOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController;
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    final double maxScroll = _scrollController.position.maxScrollExtent;
    final double offset = _scrollController.offset;
    final double headerThreshold = maxScroll - 1440.36;
    final double changeColorThreshold1 = maxScroll - 1440.36;
    final double changeColorThreshold2 = maxScroll - 1390.36;
    final double changeColorThreshold3 = maxScroll - 1340.36;
    final double changeColorThreshold4 = maxScroll - 1290.36;
    final double threshold = maxScroll - 1240.36;

    setState(() {
      _isVisibleList[0] = offset <= headerThreshold;
      _isFabExtended1 = offset <= changeColorThreshold1;
      _isFabExtended2 = offset <= changeColorThreshold2;
      _isFabExtended3 = offset <= changeColorThreshold3;
      _isFabExtended4 = offset <= changeColorThreshold4;
      _isFabExtended5 = offset <= threshold;
      if (offset <= maxScroll - 1240.36) {
        _fabOffset = maxScroll - 1240.36;
      } else {
        _fabOffset = offset;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 740,
      child: Stack(
        children: [
          if (_isVisibleList[0])
            Positioned(
              left: 36, // Project와 Name의 왼쪽 여백
              bottom: 0, // 아래 정렬
              child: Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(),
                      color: Color(0xFFE6E6E6),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Pretendard Variable',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          Positioned(
            right: 0, // 버튼들의 오른쪽 여백
            bottom: _fabOffset - 350, // 아래 정렬
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  child: FloatingActionButton(
                    heroTag: "btn4",
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    child: Icon(
                      Icons.share,
                      color: _isFabExtended4 ? Colors.white : Colors.black,
                    ),
                    elevation: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FloatingActionButton(
                    heroTag: "btn3",
                    onPressed: () {},
                    child: Icon(
                      Icons.folder_open,
                      color: _isFabExtended3 ? Colors.white : Colors.black,
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: FloatingActionButton(
                    heroTag: "btn2",
                    onPressed: () {},
                    child: Icon(
                      Icons.mail,
                      color: _isFabExtended2 ? Colors.white : Colors.black,
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 46,
                  height: 46,
                  child: FloatingActionButton(
                    heroTag: "btn1",
                    onPressed: () {},
                    child: Icon(
                      _isFabExtended1 ? Icons.favorite_outline : Icons.favorite,
                      color: _isFabExtended1 ? Colors.black : Colors.white,
                      size: 24,
                    ),
                    shape: OvalBorder(),
                    backgroundColor:
                        _isFabExtended1 ? Colors.white : Color(0xFF0059FF),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0, // X 버튼의 오른쪽 여백
            top: 54, // 위쪽 정렬
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: CircleBorder(),
              ),
              onPressed: () {
                context.push('/home');
              },
              child: Icon(
                Icons.close,
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
