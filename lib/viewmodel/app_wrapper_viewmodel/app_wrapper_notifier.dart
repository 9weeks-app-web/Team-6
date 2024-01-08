import 'package:flutter_app/viewmodel/app_wrapper_viewmodel/app_wrapper_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppWrapperNotifier extends StateNotifier<AppWrapperState> {
  AppWrapperNotifier() : super(const AppWrapperState());

  void pageChanged(int page) {
    state = state.copyWith(page: page);
  }
}

final appwrapperProvider =
    StateNotifierProvider<AppWrapperNotifier, AppWrapperState>((ref) {
  return AppWrapperNotifier();
});
