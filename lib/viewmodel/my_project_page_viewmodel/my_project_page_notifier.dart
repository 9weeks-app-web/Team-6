import 'package:flutter_app/viewmodel/my_project_page_viewmodel/my_project_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProjectPageNotifier extends StateNotifier<MyProjectPageState> {
  MyProjectPageNotifier() : super(const MyProjectPageState());

  void pageChanged(int page) {
    state = state.copyWith(page: page);
  }
}

final myProjectpageProvider =
    StateNotifierProvider<MyProjectPageNotifier, MyProjectPageState>((ref) {
  return MyProjectPageNotifier();
});
