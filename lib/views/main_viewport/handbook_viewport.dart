import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../actions/ui_actions.dart';
import '../../models/article.dart';
import '../../models/app_state.dart';

import '../main_pages/article_view.dart';

class HandbookViewport extends StatefulWidget {
  @override
  _HandbookTabportState createState() => _HandbookTabportState();
}

class _HandbookTabportState extends State<HandbookViewport>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      onInit: (store) {
        _tabController =
            TabController(vsync: this, length: store.state.articles.length);
        _tabController.addListener(() {
          store.dispatch(SetArticleIndex(index: _tabController.index));
        });
      },
      builder: (context, vm) {
        return TabBarView(
          controller: this._tabController,
          children: vm.articles.map((v) {
            return ArticleView(article: v);
          }).toList(),
        );
      });
}

class _ViewModel {
  final int numArticles;
  final Function(int) listener;
  final List<Article> articles;

  _ViewModel({
    @required this.numArticles,
    @required this.listener,
    @required this.articles,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      numArticles: store.state.articles.length,
      listener: (index) {
        store.dispatch(SetArticleIndex(index: index));
      },
      articles: store.state.articles.isEmpty
          ? []
          : store.state.articles.values.toList(),
    );
  }
}
