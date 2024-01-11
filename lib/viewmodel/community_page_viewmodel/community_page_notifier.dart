import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';
import 'package:flutter_app/viewmodel/community_page_viewmodel/community_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommunityPageNotifier extends StateNotifier<CommunityPageState> {
  CommunityPageNotifier() : super(const CommunityPageState());

  void tabChanged(int tab) {
    state = state.copyWith(tab: tab);
  }
}

final communitypageProvider =
    StateNotifierProvider<CommunityPageNotifier, CommunityPageState>((ref) {
  return CommunityPageNotifier();
});
