import 'package:flutter_app/data/datasource/remote_datasource.dart';
import 'package:flutter_app/model/recruitment_post.dart';
import 'package:flutter_app/viewmodel/my_community_page_viewmodel/my_community_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCommunityPageNotifier extends StateNotifier<MyCommunityPageState> {
  MyCommunityPageNotifier() : super(const MyCommunityPageState());

  void pageChanged(int page) {
    state = state.copyWith(page: page);
  }

  Future<void> getPost() async {
    try {
      var recruitmentPosts = await RemoteDataSource().getRecruitmentPosts();
      state = state.copyWith(recruitmentPostModel: recruitmentPosts);
    } catch (e) {
      print('Error fetching posts: $e');
    }
  }
}

final myCommunitypageProvider =
    StateNotifierProvider<MyCommunityPageNotifier, MyCommunityPageState>((ref) {
  return MyCommunityPageNotifier();
});
