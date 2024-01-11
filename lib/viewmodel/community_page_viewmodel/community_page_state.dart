import 'package:equatable/equatable.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';

class CommunityPageState extends Equatable {
  final int tab;
  const CommunityPageState({this.tab = 0});

  CommunityPageState copyWith({
    int? tab,
  }) {
    return CommunityPageState(
      tab: tab ?? this.tab,
    );
  }

  @override
  List<Object?> get props => [tab];
}
