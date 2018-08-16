import '../models/app_state.dart';
import '../reducers/counter_reducers.dart';
import '../reducers/articles_reducers.dart';
import '../reducers/ui_reducers.dart';

AppState appReducer(AppState state, dynamic action) => AppState(
      counter: counterReducer(state.counter, action),
      articles: articleReducer(state.articles, action),
      ui: uiReducer(state.ui, action),
    );
