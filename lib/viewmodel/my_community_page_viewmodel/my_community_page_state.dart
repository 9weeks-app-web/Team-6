import 'package:equatable/equatable.dart';

class MyCommunityPageState extends Equatable {
  final int page;
  const MyCommunityPageState({this.page = 0});

  MyCommunityPageState copyWith({
    int? page,
  }) {
    return MyCommunityPageState(page: page ?? this.page);
  }

  @override
  List<Object> get props => [page];
}
