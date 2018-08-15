import 'package:meta/meta.dart';

import 'counter.dart';
import 'article.dart';

@immutable
class AppState {
  final Counter counter;
  final Map<String, Article> articles;

  AppState({
    this.counter = const Counter(count: 0),
    this.articles = const {},
  });

  AppState copyWith({
    Counter counter,
    Map<String, Article> articles,
  }) =>
      AppState(
        counter: counter ?? this.counter,
        articles: articles ?? this.articles,
      );

  @override
  int get hashCode => counter.hashCode ^ articles.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          counter == other.counter &&
          articles == other.articles;

  @override
  String toString() =>
      'AppState{counter: $counter, articles.length: ${articles.length}}';
}
