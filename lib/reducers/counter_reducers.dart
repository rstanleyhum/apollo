import '../actions/counter_actions.dart';
import '../models/counter.dart';

Counter counterReducer(Counter state, dynamic action) {
  if (action is IncrementCounterAction) {
    return incrementCounter(state, action);
  }

  return state;
}

Counter incrementCounter(Counter state, IncrementCounterAction action) {
  return Counter(count: state.count + 1);
}
