import 'package:flutter_app/viewmodel/my_community_page_viewmodel/my_community_page_state.dart';
import 'package:flutter_app/viewmodel/my_page_viewmodel/my_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCommunityPageNotifier extends StateNotifier<MyCommunityPageState> {
  MyCommunityPageNotifier() : super(const MyCommunityPageState());

  void pageChanged(int page) {
    state = state.copyWith(page: page);
  }
}

final myCommunitypageProvider =
    StateNotifierProvider<MyCommunityPageNotifier, MyCommunityPageState>((ref) {
  return MyCommunityPageNotifier();
});
