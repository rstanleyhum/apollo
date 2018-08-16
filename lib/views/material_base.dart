import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/article_store_actions.dart';
import '../models/app_state.dart';

import '../src/routes.dart';

import 'base_container.dart';

class MaterialBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            ApolloRoutes.home: (context) {
              return new StoreBuilder<AppState>(
                  onInit: (store) => store.dispatch(LoadArticles()),
                  builder: (context, store) {
                    return BaseContainer();
                  });
            },
          });
}
