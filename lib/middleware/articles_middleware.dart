import 'package:redux/redux.dart';

import '../actions/article_store_actions.dart';
import '../models/app_state.dart';

Middleware<AppState> createArticlesMiddleware() {
    final loadArticles = _loadArticles();

    return TypedMiddleware<AppState, LoadArticles>(loadArticles);
}

Middleware<AppState> _loadArticles() {
    return (Store store, action, NextDispatcher next) async {
        
        // Loading articles here
        store.dispatch("Loading Here");

        next(action);
    };
}
