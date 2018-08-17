import 'package:meta/meta.dart';

@immutable
class UI {
  final int currentViewportIndex;
  final int currentArticleIndex;

  const UI({
    this.currentViewportIndex,
    this.currentArticleIndex,
  });

  UI copyWith({
    int currentViewportIndex,
    int currentArticleIndex,
  }) =>
      UI(
        currentViewportIndex: currentViewportIndex ?? this.currentViewportIndex,
        currentArticleIndex: currentArticleIndex ?? this.currentArticleIndex,
      );

  @override
  int get hashCode =>
      currentViewportIndex.hashCode ^ currentArticleIndex.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UI &&
          runtimeType == other.runtimeType &&
          currentViewportIndex == other.currentViewportIndex &&
          currentArticleIndex == other.currentArticleIndex;

  @override
  String toString() =>
      'UI{currentViewportIndex: $currentViewportIndex, currentArticleIndex: $currentArticleIndex}';
}
