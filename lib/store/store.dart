import 'package:redux/redux.dart';

class MainState {
  MainState({
    this.counter
  });

  final int counter;

  factory MainState.initial() => new MainState(counter: 0);
}

class MainAction {
}

class IncrementAction {
  IncrementAction(counter) {
    // test();
  }

  int counter = 0;


  void test() {
    print('test');
  }


  // get counter => null;
}

class DecrementAction {
  DecrementAction(this.action);

  final Map action;

  void test() {
    print('test');
  }

  get counter => null;
}

final mainReducer = combineReducers<MainState>([
  TypedReducer<MainState, IncrementAction>(_increment),
  TypedReducer<MainState, DecrementAction>(_decrement),
]);

MainState _increment(MainState state, IncrementAction action) {
  print('1111');
  print(action.counter);
  action.counter++;
  return MainState(counter: action.counter);
}

MainState _decrement(MainState state, DecrementAction action) => MainState(counter: action.counter);