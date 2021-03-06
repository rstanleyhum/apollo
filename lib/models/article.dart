import 'package:yaml/yaml.dart';

class Link {
  String linkType;
  String linkString;

  Link(this.linkType, this.linkString);
}

class Article {
  String key;
  String title;
  DateTime date;
  String intro;
  String byline;
  String parent;
  String mdcontent;
  List<String> related;

  Article(this.key, this.title, this.date, this.intro, this.byline,
      this.mdcontent, this.parent, this.related);

  Article.fromContents(String key, String contents) {
    this.key = key;
    var parts = contents.split('---');
    var fm = loadYaml(parts[1]);
    parts.removeRange(0, 2);
    this.mdcontent = parts.join('---');
    this.title = fm['title'];
    this.date = DateTime.parse(fm['date']);
    this.intro = fm['intro'];
    this.byline = fm['byline'];
    this.parent = fm['parent'];
    YamlList items = fm['related'];
    if (items == null) {
      this.related = <String>[];
      return;
    }
    this.related = new List<String>.from(items);
  }

  @override
  int get hashCode =>
      key.hashCode ^
      title.hashCode ^
      date.hashCode ^
      intro.hashCode ^
      byline.hashCode ^
      parent.hashCode ^
      mdcontent.hashCode ^
      related.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Article &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          title == other.title &&
          date == other.date &&
          intro == other.intro &&
          byline == other.byline &&
          parent == other.parent &&
          mdcontent == other.mdcontent &&
          related == other.related;

  @override
  String toString() {
    return "Article: {key: $key, title: $title}";
  }
}
