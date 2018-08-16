import 'package:flutter/material.dart';

import '../main_pages/home_page.dart';

class NewsViewport extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: HomePage(title: "NewsTab"),
      );
}
