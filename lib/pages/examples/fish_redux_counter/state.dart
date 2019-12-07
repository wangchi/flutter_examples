import 'package:fish_redux/fish_redux.dart';

class CounterState implements Cloneable<CounterState> {
  int counter = 0;

  @override
  CounterState clone() {
    return CounterState()..counter = counter;
  }
}

CounterState initState(Map<String, dynamic> args) {
  return CounterState();
}
