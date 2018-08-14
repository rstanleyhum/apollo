import 'package:meta/meta.dart';

import 'package:apollo/models/counter.dart';

@immutable
class AppState {
  final Counter counter;

  AppState({
    this.counter = const Counter(count: 0),
  });

  AppState copyWith({
    Counter counter,
  }) =>
      AppState(
        counter: counter ?? this.counter,
      );

  @override
  int get hashCode => counter.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          counter == other.counter;

  @override
  String toString() => 'AppState{counter: $counter}';
}
