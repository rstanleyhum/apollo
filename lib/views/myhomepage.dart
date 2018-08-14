import 'package:flutter/material.dart';

import 'package:apollo/containers/countertext.dart';
import 'package:apollo/containers/incrementbutton.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: CounterText(),
        ),
        floatingActionButton: IncrementCounterButton(),
      );
}
