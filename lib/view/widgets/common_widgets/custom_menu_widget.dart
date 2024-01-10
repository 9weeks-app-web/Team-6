import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/model/menu_model.dart';
import 'package:flutter_app/view/widgets/common_widgets/toast_widget.dart';
import 'package:flutter_app/view/widgets/my_interest_portfolio_detail_widgets/my_interest_portolio_detail_edit_widget.dart';
import 'package:go_router/go_router.dart';

class CustomMenuWidget extends StatefulWidget {
  final List<MenuModel> items;
  const CustomMenuWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<CustomMenuWidget> createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenuWidget> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  static const double _dropdownWidth = 250;
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
              onTap: _removeOverlay,
              child: Container(
                color: Colors.black.withOpacity(0), // 투명 배경
              ),
            ),
          ),
          Positioned(
            width: _dropdownWidth,
            child: CompositedTransformFollower(
              link: _layerLink,
              offset: const Offset(-220, _dropdownHeight),
              child: Container(
                height: (48.0 * widget.items.length),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 3),
                        blurRadius: 8.0,
                        color: DesignColor.Neutral.shade10)
                  ],
                  border: Border.all(color: DesignColor.Neutral.shade10),
                  color: Colors.white.withOpacity(1), // 여기에 색상 설정
                ),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    return TextButton(
                      onPressed: () {
                        _handleMenuItemAction(widget.items[index].title);
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.items[index].title,
                                style: DesignTextStyle(
                                        color: DesignColor.Neutral,
                                        style: DesignStyle.Body)
                                    .textStyle),
                            Icon(
                              (widget.items[index].iconImg),
                              color: DesignColor.Neutral,
                              size: 24,
                            ),
                          ],
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

  void _handleMenuItemAction(String menuItemTitle) {
    _removeOverlay();
    switch (menuItemTitle) {
      case '프로필 편집':
        context.push('/mypage/edit');
        break;
      case '배너 이미지 교체':
        showToast(context, 'Clicked 배너 이미지 교체');
        break;
      case '배너 이미지 삭제':
        showToast(context, 'Clicked 배너 이미지 삭제');
        break;
      case '공유':
        showToast(context, 'Clicked 배너 이미지 공유');
        break;
      case '보드 편집':
        showModalBottomSheet(
          isScrollControlled: true,
          useSafeArea: true,
          context: context,
          builder: (context) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.95,
              child: const MyInterestPortfolioDetailEditWidget()),
        );
        break;
      case '보드 삭제':
        showToast(context, 'Clicked 보드 삭제');
        break;
      default:
        // Default action or do nothing
        break;
    }
  }
}
