part of 'counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState(this.number);

  final int number;
  
  @override
  List<Object> get props => [number];
}
