import 'package:meta/meta.dart';

@immutable
class Counter {
  final int count;

  const Counter({this.count});

  Counter copyWith({
    int count,
  }) =>
      Counter(
        count: count ?? this.count,
      );

  @override
  int get hashCode => count.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Counter &&
          runtimeType == other.runtimeType &&
          count == other.count;

  @override
  String toString() => 'Counter{count: $count}';
}
