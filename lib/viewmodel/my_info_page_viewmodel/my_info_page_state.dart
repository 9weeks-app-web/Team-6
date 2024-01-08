import 'package:equatable/equatable.dart';

class MyInfoPageState extends Equatable {
  final int page;
  const MyInfoPageState({this.page = 0});

  MyInfoPageState copyWith({
    int? page,
  }) {
    return MyInfoPageState(page: page ?? this.page);
  }

  @override
  List<Object> get props => [page];
}
