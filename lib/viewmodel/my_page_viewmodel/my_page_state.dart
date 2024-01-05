import 'package:equatable/equatable.dart';

class MyPageState extends Equatable {
  final int page;
  const MyPageState({this.page = 0});

  MyPageState copyWith({
    int? page,
  }) {
    return MyPageState(page: page ?? this.page);
  }

  @override
  List<Object> get props => [page];
}
