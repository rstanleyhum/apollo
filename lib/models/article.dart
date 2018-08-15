class Article {
  String id;
  String title;
  String byline;
  String fullbody;
  String linkinfo;

  Article(this.id, this.fullbody);

  @override
  int get hashCode => id.hashCode ^ fullbody.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Article &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          fullbody == other.fullbody;

  Map<String, Object> toJson() {
    return {
      "id": id,
      "fullbody": fullbody,
    };
  }

  @override
  String toString() {
    return 'Article{id: $id}';
  }

  static Article fromJson(Map<String, Object> json) {
    return Article(
      json["id"] as String,
      json["fullbody"] as String,
    );
  }
}
