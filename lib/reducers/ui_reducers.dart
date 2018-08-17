import '../actions/ui_actions.dart';
import '../models/ui_state.dart';

UI uiReducer(UI state, dynamic action) {
  if (action is SetViewport) {
    return setViewport(state, action);
  }

  if (action is SetArticleIndex) {
    return setArticleIndex(state, action);
  }

  return state;
}

UI setViewport(UI state, SetViewport action) {
  return state.copyWith(currentViewportIndex: action.index);
}

UI setArticleIndex(UI state, SetArticleIndex action) {
  return state.copyWith(currentArticleIndex: action.index);
}
