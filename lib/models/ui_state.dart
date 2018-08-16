import 'package:meta/meta.dart';

@immutable
class UI {
  final int currentViewportIndex;

  const UI({this.currentViewportIndex});

  UI copyWith({
    int currentViewportIndex,
  }) =>
      UI(
        currentViewportIndex: currentViewportIndex ?? this.currentViewportIndex,
      );

  @override
  int get hashCode => currentViewportIndex.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UI &&
          runtimeType == other.runtimeType &&
          currentViewportIndex == other.currentViewportIndex;

  @override
  String toString() => 'UI{currentViewportIndex: $currentViewportIndex}';
}
