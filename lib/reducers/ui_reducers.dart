import '../actions/ui_actions.dart';
import '../models/ui_state.dart';

UI uiReducer(UI state, dynamic action) {
  if (action is SetViewport) {
    return setViewport(state, action);
  }
  return state;
}

UI setViewport(UI state, SetViewport action) {
  return UI(currentViewportIndex: action.index);
}
