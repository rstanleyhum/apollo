import 'package:flutter/material.dart';

import '../views/my_home_page.dart';

class MaterialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: "My New Demo Flutter Home Page"),
      );
}
