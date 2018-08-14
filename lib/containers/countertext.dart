import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:apollo/models/appstate.dart';

class CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<AppState, String>(
        converter: (store) => store.state.counter.count.toString(),
        builder: (context, countString) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You have pushed the button this many times:'),
                Text(
                  '$countString',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
      );
}
