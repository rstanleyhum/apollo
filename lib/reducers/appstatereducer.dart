import 'package:apollo/models/appstate.dart';
import 'package:apollo/reducers/counterreducers.dart';

AppState appReducer(AppState state, dynamic action) => AppState(
      counter: counterReducer(state.counter, action),
    );
