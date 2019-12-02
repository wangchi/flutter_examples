import 'package:flutter/material.dart';
import 'package:flutter_tutorials/routes.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:redux/redux.dart';
// import 'package:flutter_tutorials/store/store.dart';

// enum Actions { Increment, Decrement }

// int counterReducer(int state, dynamic action) {
//   if (action == 'Increment') {
//     return state + 1;
//   }

//   if (action == 'Decrement') {
//     return state - 1;
//   }

//   return state;
// }

// void main() {
//   // final store = new Store<int>(counterReducer, initialState: 0);
//   // final store = new Store<MainState>(mainReducer, initialState: MainState.initial());
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // MyApp({Key key, this.store}) : super(key: key);

  // final Store<int> store;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(212, 61, 61, 1.0),
      ),
      routes: routes,
    );
  }
}
