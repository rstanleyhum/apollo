import 'package:flutter/material.dart';

import '../main_pages/home_page.dart';

class HandbookViewport extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: TabBarView(
          children: <Widget>[
            HomePage(title: "ArticleOne"),
            HomePage(title: "ArticleTwo"),
            HomePage(title: "ArticleThree"),
            HomePage(title: "ArticleFour"),
          ],
        ),
      );
}
