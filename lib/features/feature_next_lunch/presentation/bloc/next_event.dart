part of 'next_bloc.dart';

abstract class NextEvent extends Equatable {
  const NextEvent();
}

class GetPastDataListEvent extends NextEvent {
  @override
  List<Object?> get props => [];
}
