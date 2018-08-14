import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:apollo/models/appstate.dart';
import 'package:apollo/reducers/appstatereducer.dart';
import 'package:apollo/views/materialview.dart';

void main() {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState(),
  );

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialView(),
      );
}
