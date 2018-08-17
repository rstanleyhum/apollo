import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../models/article.dart';
import '../../src/keys.dart';

class ArticleView extends StatelessWidget {
  final Article article;

  ArticleView({this.article}) : super(key: ApolloKeys.homePage);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
          child: Container(
              child: Column(
        children: <Widget>[
          Text(article.title),
          MarkdownBody(data: article.mdcontent),
          Divider(),
          Text("List Tile Title"),
          Divider(),
          Text("List Tile Title 2"),
        ],
      )));
}
