import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final ValueChanged<String?> onChanged;

  const CustomDropdownButton({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  static const double _dropdownWidth = 320;
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
      builder: (context) => Stack(children: [
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
            offset: const Offset(0, _dropdownHeight),
            child: Material(
              color: Colors.white,
              child: Container(
                height: (22.0 * widget.items.length) +
                    (21 * (widget.items.length - 1)) +
                    20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const ClampingScrollPhysics(),
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    return TextButton(
                      onPressed: () {
                        setState(() {
                          value = widget.items.elementAt(index);
                        });
                        _removeOverlay();
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.items.elementAt(index),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.grey,
                      height: 1,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _overlayEntry != null ? _removeOverlay() : _createOverlay();
      },
      child: CompositedTransformTarget(
        link: _layerLink,
        child: Container(
          width: _dropdownWidth,
          height: _dropdownHeight,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              border: Border.all(
                color: DesignColor.Neutral.shade10,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 선택값.
              value != null
                  ? Text(value!,
                      style: DesignTextStyle(
                              color: DesignColor.Neutral,
                              style: DesignStyle.Body_SemiBold)
                          .textStyle)
                  : Text(widget.hintText,
                      style: DesignTextStyle(
                              color: DesignColor.Neutral.shade50,
                              style: DesignStyle.Body_SemiBold)
                          .textStyle),
              // 아이콘.
              const Icon(
                Icons.expand_more_outlined,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
