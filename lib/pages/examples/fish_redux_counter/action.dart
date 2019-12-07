import 'package:fish_redux/fish_redux.dart';

enum CounterAction { increment, onIncrement }

class CounterActionCreator {
  // reducer
  static Action increment() {
    return Action(CounterAction.increment);
  }

  // effect
  static Action onIncrement() {
    return const Action(CounterAction.onIncrement);
  }
}
