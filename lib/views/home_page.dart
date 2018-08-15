import 'package:flutter/material.dart';

import '../containers/counter_text.dart';
import '../containers/increment_button.dart';

import '../src/keys.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({
    this.title,
  }) : super(key: ApolloKeys.homePage);

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
