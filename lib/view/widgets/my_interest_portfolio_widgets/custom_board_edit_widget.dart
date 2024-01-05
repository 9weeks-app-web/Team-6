import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:go_router/go_router.dart';

class CustomBoardEditWidget extends StatefulWidget {
  final List<String> items;
  const CustomBoardEditWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<CustomBoardEditWidget> createState() => _CustomBoardEditWidgetState();
}

class _CustomBoardEditWidgetState extends State<CustomBoardEditWidget> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  static const double _dropdownWidth = 200;
  static const double _dropdownHeight = 48;
  String? value;
  @override
  void dispose() {
    if (_overlayEntry != null) {
      _removeOverlay();
    }
    super.dispose();
  }

  void _createOverlay() {
    if (_overlayEntry != null) {
      return; // 이미 존재하면 추가하지 않음
    }
    _overlayEntry = _customDropdown();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  OverlayEntry _customDropdown() {
    bool? isCheckedLock = false;
    return OverlayEntry(
      maintainState: true,
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _removeOverlay, // 배경 탭 시 드롭다운 메뉴 닫기
              child: Container(
                color: Colors.black.withOpacity(0.5), // 반투명 배경
              ),
            ),
          ),
          Positioned(
            width: _dropdownWidth,
            child: CompositedTransformFollower(
              link: _layerLink,
              offset: const Offset(-170, _dropdownHeight),
              child: Material(
                child: Container(
                  height: (48.0 * widget.items.length),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white.withOpacity(0.9), // 반투명 메뉴 컨테이너
                  ),
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: const ClampingScrollPhysics(),
                    itemCount: widget.items.length,
                    itemBuilder: (context, index) {
                      return TextButton(
                        onPressed: () {
                          _removeOverlay();
                          showDialog(
                            context: context,
                            barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                            builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8)),
                                      color: Colors.white),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Text(
                                        '보드 편집',
                                        style: DesignTextStyle(
                                                style:
                                                    DesignStyle.SubTitle_Bold,
                                                color: DesignColor.Neutral)
                                            .textStyle,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(4)),
                                              child: SizedBox(
                                                  height: 60,
                                                  width: 80,
                                                  child: Image.asset(
                                                    'assets/images/boardimg01.png',
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Expanded(
                                              child: Material(
                                                color: Colors.white,
                                                // Material 위젯 추가
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: '보드 제목을 입력해주세요.',
                                                    hintStyle: DesignTextStyle(
                                                            style: DesignStyle
                                                                .Body,
                                                            color: DesignColor
                                                                .Neutral
                                                                .shade50)
                                                        .textStyle,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .viewInsets
                                                  .bottom),
                                          child: Expanded(
                                            child: Material(
                                              color: Colors.white,
                                              // Material 위젯 추가
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '이 보드를 비공개로 설정',
                                                        style: DesignTextStyle(
                                                                color:
                                                                    DesignColor
                                                                        .Neutral,
                                                                style: DesignStyle
                                                                    .Label_2_SemiBold)
                                                            .textStyle,
                                                      ),
                                                      Checkbox(
                                                        value: isCheckedLock,
                                                        onChanged: (value) {
                                                          isCheckedLock = value;
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                    height: 32,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        elevation: 0,
                                                        backgroundColor:
                                                            DesignColor.Primary,
                                                        shape: DesignButtonStyle
                                                            .BorderStyle04,
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        '저장',
                                                        style: DesignTextStyle(
                                                                color: Colors
                                                                    .white,
                                                                style: DesignStyle
                                                                    .Label_2_SemiBold)
                                                            .textStyle,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.items.elementAt(index),
                              style: DesignTextStyle(
                                      color: DesignColor.Neutral,
                                      style: DesignStyle.Body_SemiBold)
                                  .textStyle),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: DesignColor.Neutral.shade10,
                        height: 1,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: IconButton(
          onPressed: () {
            _overlayEntry != null ? _removeOverlay() : _createOverlay();
          },
          icon: const Icon(Icons.more_horiz_outlined)),
    );
  }
}
