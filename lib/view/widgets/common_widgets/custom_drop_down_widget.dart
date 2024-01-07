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
  bool _isOverlayActive = false;
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
    setState(() {
      _isOverlayActive = true;
    });
  }

  void _removeOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
    setState(() {
      _isOverlayActive = false;
    });
  }

  OverlayEntry _customDropdown() {
    return OverlayEntry(
      maintainState: true,
      builder: (context) => Stack(children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: _removeOverlay, // 배경 탭 시 드롭다운 메뉴 닫기
            child: Container(
              color: Colors.black.withOpacity(0), // 반투명 배경
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
                height: (48.0 * widget.items.length),
                decoration: BoxDecoration(
                  borderRadius: _isOverlayActive
                      ? const BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        )
                      : null,
                  border: Border.all(color: DesignColor.Neutral.shade10),
                  color: Colors.white.withOpacity(1),
                ),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    return TextButton(
                      onPressed: () {
                        setState(() {
                          value = widget.items.elementAt(index);
                        });
                        _removeOverlay();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(widget.items.elementAt(index),
                              style: DesignTextStyle(
                                      color: DesignColor.Neutral,
                                      style: DesignStyle.Body_SemiBold)
                                  .textStyle),
                        ),
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
            border: Border.all(color: DesignColor.Neutral.shade10),
            borderRadius: _isOverlayActive
                ? const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  )
                : const BorderRadius.all(Radius.circular(8.0)),
          ),
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
