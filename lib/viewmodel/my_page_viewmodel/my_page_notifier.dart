import 'package:flutter_app/viewmodel/my_page_viewmodel/my_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyPageNotifier extends StateNotifier<MyPageState> {
  MyPageNotifier() : super(const MyPageState());

  void pageChanged(int page) {
    state = state.copyWith(page: page);
  }

  void overlayVisibilityChange(bool overlayVisibility) {
    state = state.copyWith(isOverlayVisible: overlayVisibility);
  }
}

final mypageProvider =
    StateNotifierProvider<MyPageNotifier, MyPageState>((ref) {
  return MyPageNotifier();
});
