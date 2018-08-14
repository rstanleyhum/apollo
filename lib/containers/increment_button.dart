import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/counter_actions.dart';
import '../models/app_state.dart';

class IncrementCounterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<AppState, VoidCallback>(
        converter: (store) => () => store.dispatch(IncrementCounterAction()),
        builder: (context, callback) => FloatingActionButton(
              onPressed: callback,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
      );
}
