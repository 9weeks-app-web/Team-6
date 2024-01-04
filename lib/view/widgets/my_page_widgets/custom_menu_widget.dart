import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:go_router/go_router.dart';

class CustomMenuWidget extends StatefulWidget {
  final List<String> items;
  final String page;
  const CustomMenuWidget({
    Key? key,
    required this.items,
    required this.page,
  }) : super(key: key);

  @override
  State<CustomMenuWidget> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomMenuWidget> {
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
                          context.push('/mypage/${widget.page}');
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
