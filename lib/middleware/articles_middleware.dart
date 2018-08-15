import 'dart:async' show Future;
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:redux/redux.dart';

import '../actions/article_store_actions.dart';
import '../models/app_state.dart';

Middleware<AppState> createArticlesMiddleware() {
    final loadArticles = _loadArticles();

    return TypedMiddleware<AppState, LoadArticles>(loadArticles);
}

Middleware<AppState> _loadArticles() {

    final filenames = <String>[
        'assets/markdown1.md',
        'assets/markdown2.md',
        'assets/markdown3.md',
        'assets/markdown4.md',
    ];

    return (Store store, action, NextDispatcher next) async {
        
        store.dispatch("Start LoadArticles");

        var resultMap = Map<String, String>();

        try {
            var results = await Future.wait(filenames.map(_loadAsset));
            for (var i = 0; i < results.length; i++) {
              resultMap[filenames[i]] = results[i];
            }
            store.dispatch(AddArticlesFromDataAction(resultMap));
        } catch (e) {
            debugPrint(e.toString());
            store.dispatch("Deal with Error");
        }

        next(action);
    };
}

Future<String> _loadAsset(String filename) async {
    return await rootBundle.loadString(filename);
}