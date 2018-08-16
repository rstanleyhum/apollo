import 'package:meta/meta.dart';

import 'counter.dart';
import 'article.dart';
import 'ui_state.dart';

@immutable
class AppState {
  final Counter counter;
  final Map<String, Article> articles;
  final UI ui;

  AppState({
    this.counter = const Counter(count: 0),
    this.articles = const {},
    this.ui = const UI(currentViewportIndex: 0),
  });

  AppState copyWith({
    Counter counter,
    Map<String, Article> articles,
    UI ui,
  }) =>
      AppState(
        counter: counter ?? this.counter,
        articles: articles ?? this.articles,
        ui: ui ?? this.ui,
      );

  @override
  int get hashCode => counter.hashCode ^ articles.hashCode ^ ui.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          counter == other.counter &&
          articles == other.articles &&
          ui == other.ui;

  @override
  String toString() =>
      'AppState{counter: $counter, articles.length: ${articles.length}, ui: $ui}';
}
