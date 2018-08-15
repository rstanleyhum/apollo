class LoadArticles {}

class AddArticlesFromDataAction {
  final Map<String, String> rawData;

  AddArticlesFromDataAction(this.rawData);

  @override
  toString() {
    return 'AddArticlesFromDataAction{rawData.length: ${rawData.length}}';
  }
}
