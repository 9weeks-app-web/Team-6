import 'package:flutter_app/viewmodel/my_info_page_viewmodel/my_info_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyInfoPageNotifier extends StateNotifier<MyInfoPageState> {
  MyInfoPageNotifier() : super(const MyInfoPageState());

  void pageChanged(int page) {
    state = state.copyWith(page: page);
  }
}

final myInfopageProvider =
    StateNotifierProvider<MyInfoPageNotifier, MyInfoPageState>((ref) {
  return MyInfoPageNotifier();
});
