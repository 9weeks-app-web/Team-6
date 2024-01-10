import 'package:equatable/equatable.dart';

class MyProjectPageState extends Equatable {
  final int page;
  const MyProjectPageState({this.page = 0});

  MyProjectPageState copyWith({
    int? page,
  }) {
    return MyProjectPageState(page: page ?? this.page);
  }

  @override
  List<Object> get props => [page];
}
