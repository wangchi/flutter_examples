import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer<CounterState>(
    <Object, Reducer<CounterState>>{
      CounterAction.increment: _increment,
    },
  );
}

CounterState _increment(CounterState state, Action action) {
  final CounterState newState = state.clone();
  newState.counter = ++state.counter;
  return newState;
}
