// ignore_for_file: prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    // ignore: void_checks
    on<CounterEvent>((event, emit) {
      if (event is CounterIncrement) {
        emit(CounterState(state.number + 1));
      } else if (event is CounterDecrement) {
        emit(CounterState(state.number - 1));
      }
    });
  }
}
