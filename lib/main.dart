import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'actions/article_store_actions.dart';
import 'middleware/articles_middleware.dart';
import 'models/app_state.dart';
import 'reducers/app_state_reducer.dart';
import 'views/home_page.dart';

import 'src/routes.dart';


void main() {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState(),
    middleware: [LoggingMiddleware.printer(), createArticlesMiddleware()],
  );

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            ApolloRoutes.home: (context) {
              return new StoreBuilder<AppState>(
                onInit: (store) => store.dispatch(LoadArticles()),
                builder: (context, store) {
                  return HomePage(title: "My New Demo Flutter Home Page");
                },
              );
            },
          },
        ),
      );
}
