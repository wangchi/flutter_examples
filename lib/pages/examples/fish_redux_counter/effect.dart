import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.onIncrement: _onIncrement,
  });
}

void _onIncrement(Action action, Context<CounterState> ctx) {
  print('_onAdd');
  ctx.dispatch(CounterActionCreator.increment());
}
