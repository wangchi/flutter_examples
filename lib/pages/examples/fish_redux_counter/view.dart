import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import './action.dart';
// import './action.dart';
import './state.dart';

Widget buildView(
    CounterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Fish Redux Counter'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            state.counter.toString(),
            style: Theme.of(viewService.context).textTheme.display1,
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Theme.of(viewService.context).primaryColor,
      onPressed: () => dispatch(CounterActionCreator.increment()),
      // onPressed: () => dispatch(CounterActionCreator.onIncrement()),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
  );
}
