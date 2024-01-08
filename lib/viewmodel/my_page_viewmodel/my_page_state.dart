import 'package:equatable/equatable.dart';

class MyPageState extends Equatable {
  final int page;
  final bool isOverlayVisible;
  const MyPageState({this.page = 0, this.isOverlayVisible = false});

  MyPageState copyWith({
    int? page,
    bool? isOverlayVisible,
  }) {
    return MyPageState(
      page: page ?? this.page,
      isOverlayVisible: isOverlayVisible ?? this.isOverlayVisible,
    );
  }

  @override
  List<Object> get props => [page, isOverlayVisible];
}
