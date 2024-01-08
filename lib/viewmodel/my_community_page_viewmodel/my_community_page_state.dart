import 'package:equatable/equatable.dart';
import 'package:flutter_app/model/recruitment_post.dart';

class MyCommunityPageState extends Equatable {
  final int page;
  final List<RecruitmentPostModel>? recruitmentPostModel;
  const MyCommunityPageState({this.recruitmentPostModel, this.page = 0});

  MyCommunityPageState copyWith({
    int? page,
    List<RecruitmentPostModel>? recruitmentPostModel,
  }) {
    return MyCommunityPageState(
      page: page ?? this.page,
      recruitmentPostModel: recruitmentPostModel ?? this.recruitmentPostModel,
    );
  }

  @override
  List<Object?> get props => [page, recruitmentPostModel];
}
