import '../actions/article_store_actions.dart';
import '../models/article.dart';

Map<String, Article> articleReducer(
    Map<String, Article> state, dynamic action) {
  if (action is AddArticlesFromDataAction) {
    return addArticlesFromData(state, action);
  }

  return state;
}

Map<String, Article> addArticlesFromData(
    Map<String, Article> state, AddArticlesFromDataAction action) {
  var newState = Map<String, Article>();
  newState.addAll(state);
  action.rawData.forEach((k, v) {
    newState[k] = Article(k, v);
  });
  return newState;
}
